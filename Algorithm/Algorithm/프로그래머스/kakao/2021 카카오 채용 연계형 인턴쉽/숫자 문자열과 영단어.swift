//
//  숫자 문자열과 영단어.swift
//  Algorithm
//
//  Created by 이학진 on 2022/12/27.
//

import Foundation

func solution(_ s:String) -> Int {
    let words: [String] = ["zero","one","two","three","four",
                          "five","six","seven","eight","nine"]
    var s: String = s
   
    for (idx, word) in words.enumerated() {
        s = s.replacingOccurrences(of: word, with: "\(idx)")
    }
    
    return Int(s) ?? 0
}
