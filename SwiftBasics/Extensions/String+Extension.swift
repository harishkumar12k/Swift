extension String {
    
    func toEightPaddingBinary() -> String {
        if self.hasPrefix("-") {
            let tempString = self.replacingOccurrences(of: "-", with: "")
            return "-\(String(repeating: "0", count: 8 - tempString.count) + tempString)"
        }
        return String(repeating: "0", count: 8 - self.count) + self
    }
    
    func covertHexToRGB() -> (red: UInt32, green: UInt32, blue: UInt32) {
        let hexColor: UInt32 = UInt32(self, radix: 16) ?? 0
        let redComponent = (hexColor & 0xFF0000) >> 16
        let greenComponent = (hexColor & 0x00FF00) >> 8
        let blueComponent = hexColor & 0x0000FF
        return (red: redComponent, green: greenComponent, blue: blueComponent)
    }
    
    func covertHexToRGBA() -> (red: UInt32, green: UInt32, blue: UInt32, alpha: Double) {
        let hexColor: UInt32 = UInt32(self, radix: 16) ?? 0
        let redComponent = (hexColor & 0xFF000000) >> 24
        let greenComponent = (hexColor & 0x00FF0000) >> 16
        let blueComponent = (hexColor & 0x00FF0000) >> 8
        let alphaComponent = hexColor & 0x000000FF
        return (red: redComponent, green: greenComponent, blue: blueComponent, alpha: (Double(alphaComponent)/255).formatDecimalToStringFromStringFormatter())
    }

}
