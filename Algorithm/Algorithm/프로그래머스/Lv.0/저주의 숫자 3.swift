//
//  저주의 숫자 3.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/25.
//

import Foundation

func solution(_ n:Int) -> Int {
    var townNumber: Int = 1
    
    for i in 1...n {
        while townNumber % 3 == 0 || "\(townNumber)".contains("3") {
            townNumber += 1
        }
        print(i, townNumber)
        townNumber += 1
    }
    
    return townNumber
}
