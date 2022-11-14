//
//  OX퀴즈.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/14.
//

import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result: [String] = []
    
    for expression in quiz {
        var exp = expression.components(separatedBy: [" ","="]).filter{!$0.isEmpty}
        let op: String = exp.remove(at: 1)
        result.append(exp.calculate(op: op))
    }
    return result
}

extension Array where Element: StringProtocol {
    func calculate(op: String) -> String {
        let exp = self.map { Int($0)! }
        switch op {
        case "+":
            return (exp[0] + exp[1] == exp[2]) ? "O" : "X"
        case "-":
            return (exp[0] - exp[1] == exp[2]) ? "O" : "X"
        default:
            fatalError()
        }
    }
}
