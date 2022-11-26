//
//  최솟값 만들기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/26.
//

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    let sortedA = A.sorted(by: <)
    let sortedB = B.sorted(by: >)
    var sum: Int = 0
    
    for index in 0..<A.count {
        sum += sortedA[index] * sortedB[index]
    }
    return sum
}
