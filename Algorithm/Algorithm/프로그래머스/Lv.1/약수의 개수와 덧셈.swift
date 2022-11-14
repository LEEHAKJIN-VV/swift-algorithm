//
//  약수의 개수와 덧셈.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/14.
//

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result: Int = 0
    for number in left...right {
        result += (diviorCount(number: number) % 2 == 0) ? number : -number
    }
    
    return result
}

/// 약수를 판별할때 1 ~ 루트(n)까지만 알면됨
/// ex) 14인 경우 루트(n) => 3.xxx => 3
/// 약수는 1 * 14, 2 * 7 : 총 4개이므로 범위안에 있는 약수의 쌍을 알수있음
/// 단, 16와 같이 [약수*약수 = 자신]이 되는 경우는 count가 1만 증가
func diviorCount(number: Int) -> Int{
    var count: Int = 0
    for i in 1...Int(sqrt(Double(number))) {
        if number % i == 0 {
            count += 1
            if number != i * i {
                count += 1
            }
        }
    }
    return count
}
