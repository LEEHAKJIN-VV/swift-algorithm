//
//  핸드폰 번호 가리기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/12/05.
//

import Foundation

func solution(_ phone_number:String) -> String {
    return String(repeating: "*", count: phone_number.count - 4) + phone_number.suffix(4)
}
