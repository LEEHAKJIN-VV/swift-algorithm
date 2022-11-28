//
//  연속된 수의 합.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/28.
//

import Foundation

/// 제일 첫 숫자를 n이라고 가정.
/// n부터 n + num - 1까지의 합이 total이됨 => n + n + 1 .... n + num - 1 = total
/// n = (total - ((num * (num + 1)) / 2)) / num 이라는 공식이 세울 수 있음
func solution(_ num:Int, _ total:Int) -> [Int] {
    let n: Int = (total - ((num * (num - 1)) / 2)) / num
    return Array((n..<n+num))
}

/// n 부터 n + num까지의 합 = total
/// 1 + n까지의 합 => n * (n + 1 ) / 2
