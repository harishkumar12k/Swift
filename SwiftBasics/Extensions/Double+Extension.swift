extension Double {
    
    func formatDecimalToStringFromNumberFormatter(decimal: Int = 1) -> Double {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = decimal
        formatter.minimumFractionDigits = decimal // To ensure one decimal even if it's .0
        let formattedString = formatter.string(from: NSNumber(value: self))
        return Double(formattedString ?? "0") ?? 0
    }
    
    func formatDecimalToStringFromStringFormatter(decimal: Int = 1) -> Double {
        let formattedString = String(format: "%.\(decimal)f", self)
        return Double(formattedString) ?? 0
    }
    
}
