//
//  분수의덧셈.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/18.
//

import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    let num3 = num1 * num2
    let denum3 = denum1 * num2 + denum2 * num1
    let maxValue = max(denum3, num3)
    let minValue = min(denum3, num3)
    
    if denum3 == num3 {
        return [1,1]
    }
    let maxGcd = gcd(maxValue, minValue)
    return [denum3 / maxGcd, num3 / maxGcd]
}

func gcd(_ p: Int, _ q: Int) -> Int {
    if q == 0 {
        return p
    }
    return gcd(q, p % q)
}
