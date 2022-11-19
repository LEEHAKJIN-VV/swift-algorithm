//
//  최댓값 만들기(2).swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/19.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var maxValue: Int = Int.min
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            maxValue = max(numbers[i] * numbers[j], maxValue)
        }
    }
    
    return maxValue
}
