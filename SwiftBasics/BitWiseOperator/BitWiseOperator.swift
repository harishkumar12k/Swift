import Foundation

class BitWiseOperator {
    
    init() {
        print("BitWiseOperator init")
    }
    
    func bitWiseAndOperator() {
        print("==================================")
        print("\(#function) Started")
        defer {
            print("\(#function) Ended")
            print("==================================")
        }
        let bitsA: UInt8 = 0b00000011
        let bitsB: UInt8  = 0b00000101
        let allBits = bitsA & bitsB
        print(bitsA.toBinary().toEightPaddingBinary())
        print("    &")
        print(bitsB.toBinary().toEightPaddingBinary())
        print("--------")
        print(allBits.toBinary().toEightPaddingBinary())
        print("--------")
    }
    
    func bitWiseOrOperator() {
        print("==================================")
        print("\(#function) Started")
        defer {
            print("\(#function) Ended")
            print("==================================")
        }
        let bitsA: UInt8 = 0b00000011
        let bitsB: UInt8  = 0b00000101
        let allBits = bitsA | bitsB
        print(bitsA.toBinary().toEightPaddingBinary())
        print("    |")
        print(bitsB.toBinary().toEightPaddingBinary())
        print("--------")
        print(allBits.toBinary().toEightPaddingBinary())
        print("--------")
    }
    
    func bitWiseNotOperator() {
        print("==================================")
        print("\(#function) Started")
        defer {
            print("\(#function) Ended")
            print("==================================")
        }
        let bitsA: UInt8 = 0b00000001
        print(bitsA.toBinary().toEightPaddingBinary())
        print("    ~")
        print((~bitsA).toBinary().toEightPaddingBinary())
    }
    
    func bitWiseXorOperator() {
        print("==================================")
        print("\(#function) Started")
        defer {
            print("\(#function) Ended")
            print("==================================")
        }
        let bitsA: UInt8 = 0b00000011
        let bitsB: UInt8  = 0b00000101
        let allBits = bitsA ^ bitsB
        print(bitsA.toBinary().toEightPaddingBinary())
        print("    ^")
        print(bitsB.toBinary().toEightPaddingBinary())
        print("--------")
        print(allBits.toBinary().toEightPaddingBinary())
        print("--------")
    }
    
    func bitWiseLeftShiftOperator() {
        print("==================================")
        print("\(#function) Started")
        defer {
            print("\(#function) Ended")
            print("==================================")
        }
        let bitsA: UInt8 = 0b00001000
        print(bitsA.toBinary().toEightPaddingBinary())
        print("    <<")
        print((bitsA << 1).toBinary().toEightPaddingBinary())
    }

    func bitWiseRightShiftOperator() {
        print("\(#function) Started")
        defer {
            print("\(#function) Ended")
        }
        let bitsA: UInt8 = 0b00001000
        print(bitsA.toBinary().toEightPaddingBinary())
        print("    >>")
        print((bitsA >> 1).toBinary().toEightPaddingBinary())
    }
    
    func bitWiseLeftShiftOperatorSigned() {
        print("==================================")
        print("\(#function) Started")
        defer {
            print("\(#function) Ended")
            print("==================================")
        }
        let bitsA: Int8 = -0b0000001
        print(bitsA.toBinary().toEightPaddingBinary())
        print((bitsA))
        print("    <<")
        print((bitsA << 1).toBinary().toEightPaddingBinary())
        print((bitsA << 1))
    }
    
    func bitWiseRightShiftOperatorSigned() {
        print("==================================")
        print("\(#function) Started")
        defer {
            print("\(#function) Ended")
            print("==================================")
        }
        let bitsA: Int8 = -0b1000000
        print(bitsA.toBinary().toEightPaddingBinary())
        print((bitsA))
        print("    >>")
        print((bitsA >> 1).toBinary().toEightPaddingBinary())
        print((bitsA >> 1))
    }
    
}
