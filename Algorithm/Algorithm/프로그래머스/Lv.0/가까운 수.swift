//
//  가까운 수.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/25.
//

import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    
    return array.sorted {
        if abs($0 - n) == abs($1 - n) {
            return $0 < $1
        }
        return abs($0 - n) < abs($1 - n)
    }.first!
}
