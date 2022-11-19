//
//  유한소수 판별하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/19.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    let maxValue = max(a,b)
    let minValue = min(a,b)
    let gcdValue: Int = gcd(maxValue, minValue)
    let x: Int = a / gcdValue, y = b / gcdValue
    
    var copyY: Int = y
    if (x == y && y == 1) || x % y == 0 {
        return 1
    }
    
    while copyY > 1 {
        var factor: Int = 1
        for i in 2...copyY {
            if copyY % i == 0 {
                factor = i
                break
            }
        }
        if factor != 2 && factor != 5 {
            return 2
        }
        copyY = copyY / factor
    }
    return 1
}

func gcd(_ p: Int, _ q: Int) -> Int {
    if q == 0 {
        return p
    }
    return gcd(q, p % q)
}
