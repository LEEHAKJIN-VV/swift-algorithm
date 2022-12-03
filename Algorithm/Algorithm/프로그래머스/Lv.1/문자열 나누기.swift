//
//  문자열 나누기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/12/03.
//

import Foundation

/// - Stack을 이용한 풀이 -
/// 문제는 첫 글자를 읽고, 이 글자가 아닌 글자의 수가 같아지면 분리한다. 그리고 이 과정을 반복한다.
/// 풀이 과정은 첫 문자와 같은 문자가 입력되면, 무조건 스택에 푸시하고
/// 첫 문자와 다른 문자가 입력되면 두 문자의 수가 같은 지 비교해야 한다.
/// 첫 문자와 같은 문자를 비교하지 않고, 무조건 푸시하는 이유는 예를 들어 설명한다.
/// EX)
/// 첫 문자가 a인 경우, a와 다른 문자가 오면 무조건 분리된다. => 수가 같으므로
/// a와 같은 문자가 오는 경우, aaabb이라고 가정하자. 다음 문자가 a와 다른 문자면 분리된다. 그러나 a라면 스택에 푸시된다.
/// 즉 a와 같은 문자인 경우는 무조건 푸시해야 한다.
func solution(_ s:String) -> Int {
    guard s.count > 2 else {
        return s.count
    }
    var s: String = s
    
    var stack: [Character] = []
    var result: Int = 0
    
    stack.append(s.removeFirst())
    
    for char in s {
        guard let lastItem = stack.last else {
            stack.append(char)
            result += 1
            continue
        }
        if lastItem == char {
            stack.append(char)
        } else { // 다른 문자인 경우
            stack.popLast()
        }
    }
    return result + 1
}
