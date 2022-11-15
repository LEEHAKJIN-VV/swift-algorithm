//
//  소인수분해.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/15.
//

import Foundation

func solution(_ n:Int) -> [Int] {
    var number: Int = n
    var primeFactor: Set<Int> = []
    
    while number > 1 {
        for i in 2...number {
            if number % i == 0 {
                primeFactor.insert(i)
                number = number / i
                break
            }
        }
    }
    
    return Array(primeFactor).sorted()
}
