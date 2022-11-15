//
//  한 번만 등장한 문자.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/15.
//

import Foundation


func solution(_ s:String) -> String {
    var charSet: Set<Character> = []
    var result: Set<Character> = []
    
    for ch in s {
        if !charSet.contains(ch) {
            result.insert(ch)
            charSet.insert(ch)
        } else {
            result.remove(ch)
        }
    }
    return String(result.sorted(by: <))
}
