//
//  짝지어 제거하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/12/27.
//

import Foundation

/// stack을 이용
/// stack의 마지막 문자와 현재 입력된 문자가 같다면
/// 스택의 top을 제거한다.
/// 다르거나, stack이 비어있는 경우 stack에 푸시한다
/// 만약 성공적으로 수행한 경우 스택은 비어있으며, 모두 제거하지 못한 경우 비지 않는다
func solution(_ s:String) -> Int {
    var stack: [Character] = []
    
    for char in s {
        let last = stack.last
        
        if last == char {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }

    return (stack.isEmpty) ? 1 : 0
}


