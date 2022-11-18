//
//  다항식더하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/18.
//

import Foundation

func solution(_ polynomial:String) -> String {
    let splitPoly = polynomial.components(separatedBy: [" ", "+"]).filter {!$0.isEmpty}
    let charExp = splitPoly.filter{
        $0.contains("x")
    }
    let digitExp = splitPoly.filter{
        !$0.contains("x")
    }
    
    var xNumber: Int = 0
    
    charExp.map {
        if $0.count < 2 {
            xNumber += 1
        } else {
            //xNumber += $0.first!.wholeNumberValue!
            var xExp = $0
            xExp.removeLast()
            xNumber += Int(xExp)!
        }
    }
    
    let digitSum: Int = digitExp.map {
        Int($0)!
    }.reduce(0, +)
    
    var resultFormat = "\(xNumber)x + \(digitSum)"
    
    if xNumber == 1 {
        resultFormat.removeFirst()
    }
    if xNumber == 0 {
        resultFormat = resultFormat.components(separatedBy: [" ", "+"]).filter{!$0.isEmpty}[1]
    }
    if digitSum == 0 {
        resultFormat = resultFormat.components(separatedBy: [" ", "+"]).filter{!$0.isEmpty}[0]
    }
    
    return resultFormat
}
