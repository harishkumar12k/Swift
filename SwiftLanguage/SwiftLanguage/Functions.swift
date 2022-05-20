//
//  Functions.swift
//  SwiftLanguage
//
//  Created by Harish Kumar on 08/05/22.
//

import Foundation

class Functions {
    
    /// This prints a sample line
    func samplePrint() {
        print("Printing sample line...")
    }
    
    /// This prints a nested sample line
    func sampleNestedPrint() {
        print("Printing nested sample line - 1...")
        func nestedline() {
            print("Printing nested sample line - 2...")
        }
        nestedline()
    }
    
    /// Function with parameter
    func samplePrint(with StringValue: String) {
        print("samplePrint: " + StringValue)
    }
    
    /// Function with wildcard label
    func samplePrintWithWildcard(_ StringValue: String) {
        print("samplePrintWithWildcard: " + StringValue)
    }
    
    /**
      Returns Tuple
         - returns: min, max and addition
         - parameter numbers: Sequence of Integers
     */
    func returnTuples(numbers: [Int]) -> (min: Int, max: Int, addition: Int) {
        var min = 0
        var max = 0
        var addition = 0
        
        for number in numbers {
            if number < min {
                min = number
            } else if number > max {
                max = number
            }
            addition += number
        }
        
        return(min, max, addition)
    }
    
    enum Operation {
        case increment
        case decrement
        case subtract
        case addition
        case multiplication
    }
    
    /**
      Nested Function, Returns a function
        - returns: function with *(Int) -> Int*
        - parameter operation: Any math operation
     */
    func updateNumbers(operation: Operation) -> ((Int) -> Int) {
        if operation == .addition {
            return addOne
        } else if operation == .subtract {
            return minusOne
        }
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        func minusOne(number: Int) -> Int {
            return number - 1
        }
        func zero(number: Int) -> Int {
            return 0
        }
        return zero
    }

    /**
        Function Type as parameter, Checks for the existance of passed condition
        - returns: bool value
        - parameter numbers: Array of Integers
        - parameter condition: condition function as parameter
     */
    func checkForConditionExistance(numbers: [Int], condition: (Int) -> Bool ) -> Bool {
        for number in numbers {
            if condition(number) {
                return true
            }
        }
        return false
    }
    
    /**
        Check the number is equals to zero
        - returns: bool value
     */
    func isZero(number: Int) -> Bool {
        return number == 0
    }
    
    /**
        Check the number is lesser than zero
        - returns: bool value
     */
    func isNegative(number: Int) -> Bool {
        return number < 0
    }
    
    /**
        Check the number is greater than zero
        - returns: bool value
     */
    func isPositive(number: Int) -> Bool {
        return number > 0
    }
    
    /**
        Clouser inside the function
        - returns: bool value
     */
    func sampleClouser(numbers: [Int]) {
        let total1 = numbers.map({ (number: Int) -> Int in
            print("number1: \(number)")
            return number + 1
        })
        print("total1: \(total1)")

        let total2 = numbers.map({ number in number + 1 })
        print("total2: \(total2)")

    }
    
    /**
        addition of Number using recursive
     */
    func addRecursively(startNum: Int, endNum: Int) {
        print(startNum)
        if startNum < endNum {
            addRecursively(startNum: startNum + 1, endNum: endNum)
        } else {
            return
        }
    }
    
}
