//
//  삼총사.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/28.
//

import Foundation

func solution(_ number:[Int]) -> Int {
    let len: Int = number.count
    var result: Int = 0
    
    for i in 0..<len {
        for j in i+1..<len {
            for k in j+1..<len {
                if number[i] + number[j] + number[k] == 0{
                    result += 1
                }
            }
        }
    }
    
    return result
}
