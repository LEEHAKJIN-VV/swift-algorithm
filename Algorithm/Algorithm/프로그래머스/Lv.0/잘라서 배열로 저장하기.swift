//
//  잘라서 배열로 저장하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/25.
//

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var result: [String] = []
    var tmp: String = ""
    var index: Int = 0
    for char in my_str {
        if index < n {
            tmp += "\(char)"
        } else {
            result.append(tmp)
            tmp = "\(char)"
            index = 0
        }
        index += 1
    }
    result.append(tmp)
    return result
}
