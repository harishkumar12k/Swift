//
//  ViewController.swift
//  SwiftLanguage
//
//  Created by Harish Kumar on 08/05/22.
//

import UIKit

class ViewController: UIViewController {

    var functions = Functions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callFunctions()
    }

    func test1() {
        print("test1")
    }

    func callFunctions() {
        functions.samplePrint()
        functions.sampleNestedPrint()
        let addition = functions.updateNumbers(operation: .addition)
        print(addition(7))
        print(functions.checkForConditionExistance(numbers: [1,2,3,10], condition: functions.isZero))
        print(functions.sampleClouser(numbers: [1, 2, 3, 4]))
        functions.addRecursively(startNum: 0, endNum: 10)
        print("IncrementOnly: \(functions.incrementNumber(num: 10))")
        print("Increment By Number: \(functions.incrementNumber(num: 10, incrementBy: 5))")
        functions.veriadicFunction(numbers: 1, 2, 3, 4, 5)
        var num = 10
        print("parameterWithInOut Before Inout :: \(num)")
        functions.parameterWithInOut(num: &num)
        print("parameterWithInOut After Inout :: \(num)")

    }
    
}

