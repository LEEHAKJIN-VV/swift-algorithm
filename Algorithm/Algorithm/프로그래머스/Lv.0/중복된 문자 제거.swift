//
//  중복된 문자 제거.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/10.
//

import Foundation

func solution(_ my_string:String) -> String {
    var charSet = Set<Character>()
    var result: String = ""
    
    for ch in my_string {
        if !charSet.contains(ch) {
            charSet.insert(ch)
            result.append(ch)
        }
    }
    return result
}
