//
//  가위 바위 보.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/19.
//

import Foundation

func solution(_ rsp:String) -> String {
    let map: [Character:String] = ["2":"0", "0":"5", "5":"2"]
    return rsp.map{map[$0] ?? "error"}.joined()
}
