public final class ASCII8: Font {
    public var glyphCache: [UInt16: Glyph]
    public let fontHeight = 8
    public let maxCharAscent = 7
    public let maxCharDescent = 1
    
    public func getGlyph(_ encoding: UInt16) -> Glyph {
        if let glyph = glyphCache[encoding] {
            return glyph
        } 
        return glyphCache[0x3F]!
    }

    public init() {
        glyphCache = ASCII8.glyphData

        for key in glyphCache.keys {
            glyphCache[key]!.bitmap!.data = ASCII8.bitmapData[key]!
        }
    }

    static let glyphData: [UInt16: Glyph] = [
        32 : Glyph(bitmap: Bitmap(width: 1, height: 1, bitCount: 1), width: 1, height: 1, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        33 : Glyph(bitmap: Bitmap(width: 1, height: 7, bitCount: 1), width: 1, height: 7, dx: 2, dy: 0, shiftX: 5, shiftY: 0),
        34 : Glyph(bitmap: Bitmap(width: 3, height: 2, bitCount: 1), width: 3, height: 2, dx: 1, dy: 5, shiftX: 5, shiftY: 0),
        35 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        36 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        37 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        38 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        39 : Glyph(bitmap: Bitmap(width: 2, height: 3, bitCount: 1), width: 2, height: 3, dx: 1, dy: 4, shiftX: 5, shiftY: 0),
        40 : Glyph(bitmap: Bitmap(width: 4, height: 7, bitCount: 1), width: 4, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        41 : Glyph(bitmap: Bitmap(width: 4, height: 7, bitCount: 1), width: 4, height: 7, dx: 1, dy: 0, shiftX: 5, shiftY: 0),
        42 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 1, shiftX: 5, shiftY: 0),
        43 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 1, shiftX: 5, shiftY: 0),
        44 : Glyph(bitmap: Bitmap(width: 2, height: 3, bitCount: 1), width: 2, height: 3, dx: 1, dy: -1, shiftX: 5, shiftY: 0),
        45 : Glyph(bitmap: Bitmap(width: 4, height: 1, bitCount: 1), width: 4, height: 1, dx: 0, dy: 3, shiftX: 5, shiftY: 0),
        46 : Glyph(bitmap: Bitmap(width: 1, height: 1, bitCount: 1), width: 1, height: 1, dx: 2, dy: 0, shiftX: 5, shiftY: 0),
        47 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        48 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        49 : Glyph(bitmap: Bitmap(width: 3, height: 7, bitCount: 1), width: 3, height: 7, dx: 1, dy: 0, shiftX: 5, shiftY: 0),
        50 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        51 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        52 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        53 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        54 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        55 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        56 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        57 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        58 : Glyph(bitmap: Bitmap(width: 1, height: 4, bitCount: 1), width: 1, height: 4, dx: 1, dy: 1, shiftX: 5, shiftY: 0),
        59 : Glyph(bitmap: Bitmap(width: 2, height: 5, bitCount: 1), width: 2, height: 5, dx: 1, dy: 0, shiftX: 5, shiftY: 0),
        60 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        61 : Glyph(bitmap: Bitmap(width: 5, height: 3, bitCount: 1), width: 5, height: 3, dx: 0, dy: 2, shiftX: 5, shiftY: 0),
        62 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        63 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        64 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        65 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        66 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        67 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        68 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        69 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        70 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        71 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        72 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        73 : Glyph(bitmap: Bitmap(width: 3, height: 7, bitCount: 1), width: 3, height: 7, dx: 1, dy: 0, shiftX: 5, shiftY: 0),
        74 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        75 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        76 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        77 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        78 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        79 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        80 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        81 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        82 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        83 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        84 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        85 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        86 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        87 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        88 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        89 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        90 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        91 : Glyph(bitmap: Bitmap(width: 3, height: 7, bitCount: 1), width: 3, height: 7, dx: 1, dy: 0, shiftX: 5, shiftY: 0),
        92 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        93 : Glyph(bitmap: Bitmap(width: 3, height: 7, bitCount: 1), width: 3, height: 7, dx: 1, dy: 0, shiftX: 5, shiftY: 0),
        94 : Glyph(bitmap: Bitmap(width: 3, height: 2, bitCount: 1), width: 3, height: 2, dx: 1, dy: 5, shiftX: 5, shiftY: 0),
        95 : Glyph(bitmap: Bitmap(width: 5, height: 1, bitCount: 1), width: 5, height: 1, dx: 0, dy: -1, shiftX: 5, shiftY: 0),
        96 : Glyph(bitmap: Bitmap(width: 2, height: 2, bitCount: 1), width: 2, height: 2, dx: 2, dy: 5, shiftX: 5, shiftY: 0),
        97 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        98 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        99 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        100 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        101 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        102 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        103 : Glyph(bitmap: Bitmap(width: 5, height: 6, bitCount: 1), width: 5, height: 6, dx: 0, dy: -1, shiftX: 5, shiftY: 0),
        104 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        105 : Glyph(bitmap: Bitmap(width: 1, height: 7, bitCount: 1), width: 1, height: 7, dx: 2, dy: 0, shiftX: 5, shiftY: 0),
        106 : Glyph(bitmap: Bitmap(width: 4, height: 8, bitCount: 1), width: 4, height: 8, dx: 0, dy: -1, shiftX: 5, shiftY: 0),
        107 : Glyph(bitmap: Bitmap(width: 5, height: 7, bitCount: 1), width: 5, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        108 : Glyph(bitmap: Bitmap(width: 3, height: 7, bitCount: 1), width: 3, height: 7, dx: 1, dy: 0, shiftX: 5, shiftY: 0),
        109 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        110 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        111 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        112 : Glyph(bitmap: Bitmap(width: 5, height: 6, bitCount: 1), width: 5, height: 6, dx: 0, dy: -1, shiftX: 5, shiftY: 0),
        113 : Glyph(bitmap: Bitmap(width: 5, height: 6, bitCount: 1), width: 5, height: 6, dx: 0, dy: -1, shiftX: 5, shiftY: 0),
        114 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        115 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        116 : Glyph(bitmap: Bitmap(width: 3, height: 7, bitCount: 1), width: 3, height: 7, dx: 1, dy: 0, shiftX: 5, shiftY: 0),
        117 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        118 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        119 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        120 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        121 : Glyph(bitmap: Bitmap(width: 5, height: 6, bitCount: 1), width: 5, height: 6, dx: 0, dy: -1, shiftX: 5, shiftY: 0),
        122 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        123 : Glyph(bitmap: Bitmap(width: 4, height: 7, bitCount: 1), width: 4, height: 7, dx: 0, dy: 0, shiftX: 5, shiftY: 0),
        124 : Glyph(bitmap: Bitmap(width: 1, height: 7, bitCount: 1), width: 1, height: 7, dx: 2, dy: 0, shiftX: 5, shiftY: 0),
        125 : Glyph(bitmap: Bitmap(width: 4, height: 7, bitCount: 1), width: 4, height: 7, dx: 1, dy: 0, shiftX: 5, shiftY: 0),
        126 : Glyph(bitmap: Bitmap(width: 4, height: 2, bitCount: 1), width: 4, height: 2, dx: 0, dy: 5, shiftX: 5, shiftY: 0),
        127 : Glyph(bitmap: Bitmap(width: 5, height: 5, bitCount: 1), width: 5, height: 5, dx: 0, dy: 1, shiftX: 5, shiftY: 0)
    ]

    static let bitmapData: [UInt16: [UInt32]] = [
        32 : [0],
        33 : [2147483648, 2147483648, 2147483648, 2147483648, 2147483648, 0, 2147483648],
        34 : [2684354560, 2684354560],
        35 : [1342177280, 1342177280, 4160749568, 1342177280, 4160749568, 1342177280, 1342177280],
        36 : [536870912, 2013265920, 2147483648, 1879048192, 134217728, 4026531840, 536870912],
        37 : [134217728, 3355443200, 3489660928, 536870912, 1476395008, 2550136832, 2147483648],
        38 : [536870912, 1342177280, 536870912, 1610612736, 2415919104, 2281701376, 1879048192],
        39 : [3221225472, 1073741824, 2147483648],
        40 : [805306368, 1073741824, 2147483648, 2147483648, 2147483648, 1073741824, 805306368],
        41 : [3221225472, 536870912, 268435456, 268435456, 268435456, 536870912, 3221225472],
        42 : [2818572288, 1879048192, 4160749568, 1879048192, 2818572288],
        43 : [536870912, 536870912, 4160749568, 536870912, 536870912],
        44 : [3221225472, 1073741824, 2147483648],
        45 : [4026531840],
        46 : [2147483648],
        47 : [134217728, 134217728, 268435456, 536870912, 1073741824, 2147483648, 2147483648],
        48 : [1879048192, 2281701376, 2550136832, 2818572288, 3355443200, 2281701376, 1879048192],
        49 : [1073741824, 3221225472, 1073741824, 1073741824, 1073741824, 1073741824, 3758096384],
        50 : [1879048192, 2281701376, 2281701376, 268435456, 536870912, 1073741824, 4160749568],
        51 : [1879048192, 2281701376, 134217728, 1879048192, 134217728, 2281701376, 1879048192],
        52 : [2281701376, 2281701376, 2281701376, 4160749568, 134217728, 134217728, 134217728],
        53 : [4160749568, 2147483648, 2147483648, 4026531840, 134217728, 134217728, 4026531840],
        54 : [1879048192, 2281701376, 2147483648, 4026531840, 2281701376, 2281701376, 1879048192],
        55 : [4160749568, 134217728, 134217728, 268435456, 268435456, 536870912, 536870912],
        56 : [1879048192, 2281701376, 2281701376, 1879048192, 2281701376, 2281701376, 1879048192],
        57 : [1879048192, 2281701376, 2281701376, 2013265920, 134217728, 2281701376, 1879048192],
        58 : [2147483648, 0, 0, 2147483648],
        59 : [1073741824, 0, 0, 1073741824, 2147483648],
        60 : [402653184, 536870912, 1073741824, 2147483648, 1073741824, 536870912, 402653184],
        61 : [4160749568, 0, 4160749568],
        62 : [3221225472, 536870912, 268435456, 134217728, 268435456, 536870912, 3221225472],
        63 : [1879048192, 2281701376, 2281701376, 268435456, 536870912, 0, 536870912],
        64 : [1879048192, 2281701376, 2281701376, 2818572288, 2952790016, 2147483648, 2013265920],
        65 : [536870912, 1879048192, 2281701376, 4160749568, 2281701376, 2281701376, 2281701376],
        66 : [4026531840, 2281701376, 2281701376, 4026531840, 2281701376, 2281701376, 4026531840],
        67 : [1879048192, 2281701376, 2147483648, 2147483648, 2147483648, 2281701376, 1879048192],
        68 : [4026531840, 2281701376, 2281701376, 2281701376, 2281701376, 2281701376, 4026531840],
        69 : [4160749568, 2147483648, 2147483648, 4026531840, 2147483648, 2147483648, 4160749568],
        70 : [4160749568, 2147483648, 2147483648, 4026531840, 2147483648, 2147483648, 2147483648],
        71 : [1879048192, 2281701376, 2147483648, 3087007744, 2281701376, 2281701376, 1879048192],
        72 : [2281701376, 2281701376, 2281701376, 4160749568, 2281701376, 2281701376, 2281701376],
        73 : [3758096384, 1073741824, 1073741824, 1073741824, 1073741824, 1073741824, 3758096384],
        74 : [939524096, 268435456, 268435456, 268435456, 2415919104, 2415919104, 1610612736],
        75 : [2281701376, 2415919104, 2684354560, 3221225472, 2684354560, 2415919104, 2281701376],
        76 : [2147483648, 2147483648, 2147483648, 2147483648, 2147483648, 2147483648, 4160749568],
        77 : [2281701376, 3623878656, 2818572288, 2281701376, 2281701376, 2281701376, 2281701376],
        78 : [2281701376, 3355443200, 3355443200, 2818572288, 2550136832, 2550136832, 2281701376],
        79 : [1879048192, 2281701376, 2281701376, 2281701376, 2281701376, 2281701376, 1879048192],
        80 : [4026531840, 2281701376, 2281701376, 4026531840, 2147483648, 2147483648, 2147483648],
        81 : [1879048192, 2281701376, 2281701376, 2281701376, 2281701376, 2415919104, 1744830464],
        82 : [4026531840, 2281701376, 2281701376, 4026531840, 2281701376, 2281701376, 2281701376],
        83 : [1879048192, 2281701376, 2147483648, 1879048192, 134217728, 2281701376, 1879048192],
        84 : [4160749568, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912],
        85 : [2281701376, 2281701376, 2281701376, 2281701376, 2281701376, 2281701376, 1879048192],
        86 : [2281701376, 2281701376, 2281701376, 2281701376, 2281701376, 1342177280, 536870912],
        87 : [2281701376, 2281701376, 2281701376, 2818572288, 3623878656, 2281701376, 2281701376],
        88 : [2281701376, 2281701376, 1342177280, 536870912, 1342177280, 2281701376, 2281701376],
        89 : [2281701376, 2281701376, 1342177280, 536870912, 536870912, 536870912, 536870912],
        90 : [4160749568, 134217728, 268435456, 536870912, 1073741824, 2147483648, 4160749568],
        91 : [3758096384, 2147483648, 2147483648, 2147483648, 2147483648, 2147483648, 3758096384],
        92 : [2147483648, 2147483648, 1073741824, 536870912, 268435456, 134217728, 134217728],
        93 : [3758096384, 536870912, 536870912, 536870912, 536870912, 536870912, 3758096384],
        94 : [1073741824, 2684354560],
        95 : [4160749568],
        96 : [2147483648, 1073741824],
        97 : [1879048192, 2281701376, 2281701376, 2550136832, 1744830464],
        98 : [2147483648, 2147483648, 2952790016, 3355443200, 2281701376, 2281701376, 1879048192],
        99 : [1879048192, 2281701376, 2147483648, 2281701376, 1879048192],
        100 : [134217728, 134217728, 1744830464, 2550136832, 2281701376, 2281701376, 1879048192],
        101 : [1879048192, 2281701376, 4160749568, 2147483648, 1879048192],
        102 : [805306368, 1207959552, 1073741824, 3758096384, 1073741824, 1073741824, 1073741824],
        103 : [1879048192, 2281701376, 2281701376, 2013265920, 134217728, 1879048192],
        104 : [2147483648, 2147483648, 2952790016, 3355443200, 2281701376, 2281701376, 2281701376],
        105 : [2147483648, 0, 2147483648, 2147483648, 2147483648, 2147483648, 2147483648],
        106 : [268435456, 0, 268435456, 268435456, 268435456, 268435456, 2415919104, 1610612736],
        107 : [2147483648, 2281701376, 2415919104, 2684354560, 3758096384, 2415919104, 2281701376],
        108 : [3221225472, 1073741824, 1073741824, 1073741824, 1073741824, 1073741824, 3758096384],
        109 : [3489660928, 2818572288, 2281701376, 2281701376, 2281701376],
        110 : [4026531840, 2281701376, 2281701376, 2281701376, 2281701376],
        111 : [1879048192, 2281701376, 2281701376, 2281701376, 1879048192],
        112 : [4026531840, 2281701376, 2281701376, 4026531840, 2147483648, 2147483648],
        113 : [2013265920, 2281701376, 2281701376, 2013265920, 134217728, 134217728],
        114 : [2952790016, 3355443200, 2147483648, 2147483648, 2147483648],
        115 : [1879048192, 2147483648, 1879048192, 134217728, 4026531840],
        116 : [1073741824, 1073741824, 3758096384, 1073741824, 1073741824, 1073741824, 536870912],
        117 : [2281701376, 2281701376, 2281701376, 2550136832, 1744830464],
        118 : [2281701376, 2281701376, 2281701376, 1342177280, 536870912],
        119 : [2281701376, 2281701376, 2281701376, 2818572288, 1342177280],
        120 : [2281701376, 2281701376, 1879048192, 2281701376, 2281701376],
        121 : [2281701376, 2281701376, 1879048192, 268435456, 268435456, 536870912],
        122 : [4160749568, 134217728, 1879048192, 2147483648, 4160749568],
        123 : [805306368, 1073741824, 1073741824, 2147483648, 1073741824, 1073741824, 805306368],
        124 : [2147483648, 2147483648, 2147483648, 2147483648, 2147483648, 2147483648, 2147483648],
        125 : [3221225472, 536870912, 536870912, 268435456, 536870912, 536870912, 3221225472],
        126 : [1342177280, 2684354560],
        127 : [2818572288, 1879048192, 4160749568, 1879048192, 2818572288]
    ]

}