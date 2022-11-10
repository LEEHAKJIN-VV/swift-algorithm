//
//  서울에서 김서방 찾기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/10.
//

import Foundation

/// 김서방을 찾기 위해 firstIndex를 사용
/// firstIndex는 collections에서 찾고자 하는 element의 index를 반환함
/// index가 없을수도 있으므로 optional 타입을 반환
/// 문제에서 "Kim"은 반드시 서울안에 포함되어 있다고 명시되어 있으니 강제적 언래핑 사용
func solution(_ seoul:[String]) -> String {
    let target: String = "Kim"
    let index: Int = seoul.firstIndex(of: target)!
    return "김서방은 \(index)에 있다"
}
