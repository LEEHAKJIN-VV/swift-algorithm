//
//  진료순서정하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/12.
//

import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    let emergencySorted = emergency.sorted(by: >)
    return emergency.map {
        emergencySorted.firstIndex(of: $0)! + 1
    }
}
