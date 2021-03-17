import SwiftIO

public struct BMP {
    public struct FileHeader {
        public var bfSize: Int32 = 0
        public var bfReserved1: Int16 = 0
        public var bfReserved2: Int16 = 0
        public var bfOffBits: Int32 = 0
    }

    public struct InfoHeader {
        public var biSize: Int32 = 0
        public var biWidth: Int32 = 0
        public var biHeight: Int32 = 0
        public var biPlanes: UInt16 = 0
        public var biBitCount: UInt16 = 0
        public var biCompression: Int32 = 0
        public var biSizeImages: Int32 = 0
        public var biXpelsPerMeter: Int32 = 0
        public var biYpelsPerMeter: Int32 = 0
        public var biClrUsed: Int32 = 0
        public var biClrImportant: Int32 = 0
    }

    public let header = UInt16(0x4D42)
    public let file: FileDescriptor

    public var palette: Palette! = nil
    public var bitmap: Bitmap! = nil

    public var bitsPerPixel: Int = 0
    public var width: Int = 0
    public var height: Int = 0


    public init(path: String) {
        var bfType = UInt16(0)
        var fileHeader = FileHeader()
        var infoHeader = InfoHeader()

        file = FileDescriptor.open(path)
        _ = withUnsafeMutableBytes(of: &bfType) { buffer in
            file.read(into: buffer)
        }

        if bfType != header {
            print("BMP file type error!")
        }

        _ = withUnsafeMutableBytes(of: &fileHeader) { buffer in
            file.read(fromAbsoluteOffest: 2, into: buffer)
            for i in 0..<buffer.count {
                print("\(i) = \(buffer[i])")
            }
        }
        withUnsafeBytes(of: fileHeader) { buffer in
            for i in 0..<buffer.count {
                print("\(i) = \(buffer[i])")
            }
        }
        _ = withUnsafeMutableBytes(of: &infoHeader) { buffer in
            file.read(fromAbsoluteOffest: 14, into: buffer)
        }

        print("size of fileHeader: \(MemoryLayout<FileHeader>.size)")
        print("size of infoHeader: \(MemoryLayout<InfoHeader>.size)")
        print(fileHeader)
        print(infoHeader)

        bitsPerPixel = Int(infoHeader.biBitCount)
        width = Int(infoHeader.biWidth)
        height = Int(infoHeader.biHeight)

        let colorCount = 1 << bitsPerPixel
        var colors = [UInt32](repeating: 0, count: colorCount)

        colors.withUnsafeMutableBytes { buffer in
            file.read(into: buffer)
        }

        palette = Palette(count: colorCount)
        //palette.reserveCapacity(colorCount)
        for i in 0..<colorCount {
            palette[i] = colors[i]
        }

        if colors[0] == 0x00000000 {
            palette.makeTransparent(0)
        }
        

        bitmap = Bitmap(width: width, height: height, bitCount: bitsPerPixel)
        let bytesPerLine = (bitsPerPixel * width + 31) / 32 * 4 
        let imageByteSize = bytesPerLine * height

        var imageData = [UInt32](repeating: 0x0, count: imageByteSize / 4)

        print("bitmap uint32 size = \(bitmap.data.count), image uint32 size = \(imageData.count)")
        imageData.withUnsafeMutableBytes { buffer in
            file.read(fromAbsoluteOffest: Int(fileHeader.bfOffBits), into: buffer)
        }

        if bitsPerPixel < 8 {
            bitmap.MSBMemoryCopy(imageData)
        } else {
            bitmap.memoryCopy(imageData)
        }
        
        imageData = bitmap.data
        let uint32CountPerLine = bytesPerLine / 4
        for r in 0..<height {
            for c in 0..<uint32CountPerLine {
                bitmap.data[r * uint32CountPerLine + c] = imageData[(height - r - 1) * uint32CountPerLine + c]
            }
        }

        file.close()
    }

    public func getBitmap() -> Bitmap {
        return bitmap
    }

    public func getPalette() -> Palette {
        return palette
    }

}
