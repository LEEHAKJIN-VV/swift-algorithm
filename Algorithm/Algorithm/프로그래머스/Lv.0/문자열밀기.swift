//
//  문자열밀기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/23.
//

import Foundation

func solution(_ A:String, _ B:String) -> Int {
    if A == B {
        return 0
    }
    
    var aStrings = Array(A)
    var bStrings = Array(B)
    var count: Int = 1
    
    for _ in 0..<A.count {
        let lastChar = aStrings.removeLast()
        aStrings.insert(lastChar, at: 0)
        
        if aStrings == bStrings {
            return count
        }
        count += 1
    }
    return -1
}
