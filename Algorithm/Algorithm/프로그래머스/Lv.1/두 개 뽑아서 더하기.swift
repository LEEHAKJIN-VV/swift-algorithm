//
//  Lv.1 두 개 뽑아서 더하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/06.
//

import Foundation

/// 집합은 중복을 허용하지 않음
/// Array(Set) => 배열로 변환 가능
func solution(_ numbers:[Int]) -> [Int] {
    var numSet = Set<Int>()
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            numSet.insert(numbers[i] + numbers[j])
        }
    }
    return Array(numSet).sorted()
}
