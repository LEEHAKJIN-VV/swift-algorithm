//
//  없는 숫자 더하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/26.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    return 45 - numbers.reduce(0, +)
}
