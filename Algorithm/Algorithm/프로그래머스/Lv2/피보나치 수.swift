//
//  피보나치 수.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/27.
//

import Foundation

func solution(_ n:Int) -> Int {
    if n < 3 {
        return n
    }
    
    var fibo: [Int] = Array(repeating: 0, count: n + 1)
    fibo[1] = 1
    fibo[2] = 1
    
    for i in 3...n {
        fibo[i] = (fibo[i-2] + fibo[i-1]) % 1234567
    }
    return fibo[n]
}
