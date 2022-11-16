//
//  푸드 파이트 대회.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/16.
//

import Foundation

/// 한 선수가 먹는 음식을 뒤집으면 상대 선수가 먹는 음식 배치가 됨
func solution(_ food:[Int]) -> String {
    var firstFoodList: String = ""
    
    for (index,calorie) in food.enumerated() {
        firstFoodList += String(repeating: "\(index)", count: calorie/2)
    }
    let secondFoodList: String = String(firstFoodList.reversed())
    return firstFoodList + "0" + secondFoodList
}
