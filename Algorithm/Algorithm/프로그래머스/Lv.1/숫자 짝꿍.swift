//
//  숫자 짝꿍.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/16.
//

import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var xCount: [Int] = Array(repeating: 0, count: 10)
    var yCount: [Int] = Array(repeating: 0, count: 10)
    
    for ch in X {
        xCount[ch.wholeNumberValue!] += 1
    }
    
    for ch in Y {
        yCount[ch.wholeNumberValue!] += 1
    }
    
    var result: String = ""
    
    for index in stride(from: 9, to: -1, by: -1) {
        if xCount[index] > 0 && yCount[index] > 0 {
            if index == 0 && result.isEmpty {
                result += "\(index)"
            } else {
                while xCount[index] > 0 && yCount[index] > 0 {
                    result += "\(index)"
                    
                    xCount[index] -= 1
                    yCount[index] -= 1
                }
            }
        }
    }
    
    return (result.isEmpty) ? "-1" : result
}
