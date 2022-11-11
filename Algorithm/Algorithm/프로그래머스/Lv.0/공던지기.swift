//
//  공던지기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/11.
//

import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    let personCount: Int = numbers.count
    var currentBallIndex: Int = 0
    
    for _ in 0..<k - 1{
        currentBallIndex = (currentBallIndex + 2) % personCount
    }
    return numbers[currentBallIndex]
}
