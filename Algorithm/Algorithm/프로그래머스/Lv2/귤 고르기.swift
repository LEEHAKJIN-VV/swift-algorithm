//
//  귤 고르기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/28.
//

import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var orange: [Int:Int] = [:]
    var k: Int = k
    var result: Int = 0
    
    for tan in tangerine {
        let count = orange[tan, default: 0]
        orange[tan] = count + 1
    }
    
    let sortedOrange = orange.sorted { first, second in
        first.value > second.value
    }
    
    for (key, value) in sortedOrange {
        k = k - value
        result += 1
        if k <= 0 {
            break
        }
    }
    
    return result
}
