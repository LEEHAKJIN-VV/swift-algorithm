//
//  가장 큰 수 찾기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/28.
//

import Foundation

func solution(_ array:[Int]) -> [Int] {
    let maxValue: Int = array.max()!
    let maxIndex: Int = array.firstIndex(of: maxValue)!
    
    return [maxValue, maxIndex]
}
