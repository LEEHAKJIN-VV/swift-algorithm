//
//  JadenCase 문자열 만들기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/25.
//

import Foundation

func solution(_ s:String) -> String {
    return s.components(separatedBy: " ").map { word in
        var copyWord: String = word.lowercased()
        guard copyWord.first != nil else {
            return copyWord
        }
        
        let firstChar: Character = copyWord.removeFirst()
        copyWord.insert(contentsOf: firstChar.uppercased(), at: copyWord.startIndex)
        return copyWord
    }.joined(separator: " ")
}
