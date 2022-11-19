//
//  약수 구하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/19.
//

import Foundation

func solution(_ n:Int) -> [Int] {
    var result: [Int] = []
    
    for num in 1...Int(sqrt(Double(n))) {
        //print(num)
        if n % num == 0 {
            result.append(num)
            if num * num != n {
                result.append(n / num)
            }
        }
    }
    
    return result.sorted()
}
