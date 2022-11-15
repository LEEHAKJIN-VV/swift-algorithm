//
//  7의 개수.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/15.
//

import Foundation

func solution(_ array:[Int]) -> Int {
    let sevenCount = array.map {
        "\($0)".filter { ch in
            ch == "7"
        }.count
    }.reduce(0, +)
    return sevenCount
}
