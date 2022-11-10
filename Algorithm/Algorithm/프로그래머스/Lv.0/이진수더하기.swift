//
//  이진수더하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/10.
//

import Foundation

/// Int와 String 타입 모두 이니셜라이저에 진수 변환을 지원함
/// Int("123", radix:2) => "123"을 십진수로 변환, 결과는 정수
/// String(123, radix:2) => 123을 이진수로 변환, 결과는 문자열
func solution(_ bin1:String, _ bin2:String) -> String {
    let num1: Int = Int(bin1, radix:2)!
    let num2: Int = Int(bin2, radix:2)!
    return String(num1 + num2, radix: 2)
}
