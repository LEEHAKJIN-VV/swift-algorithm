//
//  합성수 찾기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/19.
//

import Foundation

func solution(_ n:Int) -> Int {
    if n < 4 {
        return 0
    }
    var result: Int = 0
    
    
    for number in 1...n {
        var divisorCount: Int = 0
        for num in 1...Int(sqrt(Double(number))) {
            if number % num == 0 {
                divisorCount += (num * num == number) ? 1 : 2
            }
            
            if divisorCount > 2 {
                result += 1
                break
            }
        }
        divisorCount = 0
    }
    
    return result
}
