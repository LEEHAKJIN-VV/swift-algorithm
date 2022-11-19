//
//  문자열 계산하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/19.
//

import Foundation

func solution(_ my_string:String) -> Int {
    let splitPoly = my_string.components(separatedBy: " ")
    let operandArray: [String] = ["+", "-"]
    var polyStack: [Int] = []
    var preOperand: String = ""
    
    for char in splitPoly {
        if !operandArray.contains(char) {
            polyStack.append(Int(char)!)
        }
        
        if polyStack.count > 1 {
            let y = polyStack.removeLast()
            let x = polyStack.removeLast()
            var sum: Int = 0
            
            switch preOperand {
            case "+":
                sum = x + y
            default:
                sum = x - y
            }
            polyStack.append(sum)
        } else {
            preOperand = char
        }
    }
    return polyStack.first!
}
