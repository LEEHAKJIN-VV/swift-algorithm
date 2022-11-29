//
//  Summer:Winter Coding(~2018) 예산.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/29.
//

import Foundation

// Greedy
func solution(_ d:[Int], _ budget:Int) -> Int {
    var sum: Int = budget
    var count: Int = 0
    
    for money in d.sorted() {
        sum -= money
        
        if sum < 0 {
            return count
        }
        
        count += 1
    }
    
    return count
}
