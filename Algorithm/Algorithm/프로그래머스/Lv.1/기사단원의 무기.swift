//
//  기사단원의 무기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/17.
//

import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var steelCount: Int = 0
    
    (1...number).map{ knight in
        let count = divisorCount(knight)
        steelCount += (count > limit) ? power : count
    }
    return steelCount
}

func divisorCount(_ num: Int) -> Int {
    var count: Int = 0
    
    for n in 1...Int(sqrt(Double(num))) {
        if num % n == 0 {
            count += 2
            if n * n == num {
                count -= 1
            }
        }
    }
    return count
}
