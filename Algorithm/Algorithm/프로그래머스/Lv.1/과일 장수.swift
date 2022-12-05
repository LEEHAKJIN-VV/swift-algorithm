//
//  과일 장수.swift
//  Algorithm
//
//  Created by 이학진 on 2022/12/05.
//

import Foundation

// 정렬을 이용한 방법 시간초과 (테스트케이스 11 ~ 15)

//func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
//    var totalProfit: Int = 0
//    var sortedScore = score.sorted(by: >) // O(nlogn)
//
//    while m <= sortedScore.count { // ??
//        totalProfit += Array(sortedScore[0..<m]).min()! * m
//        sortedScore.removeSubrange(0..<m)
//    }
//
//    return totalProfit
//}

// O(n) + O(k) => O(n)
func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var totalProfit: Int = 0
    var apples: [Int] = Array(repeating: 0, count: k + 1)
    var totalApples: Int = 0
    
    for apple in score {
        apples[apple] += 1
        totalApples += apple
    }

    var remainApple: Int = 0
    for index in stride(from: k, to: 0, by: -1) {
        let currentApple = remainApple + apples[index]
        let boxCount = currentApple / m // 상자의 개수
        let remain = currentApple % m // 포장하지 않고 남은 사과의 개수
        
        totalProfit += (index * m * boxCount) // (최저사과 점수: index) * (한 상자에 담긴 사과 개수: m) * (상자의 개수: a)
        remainApple = remain
    }
    return totalProfit
}
