//
//  모의고사.swift
//  Algorithm
//
//  Created by 이학진 on 2022/12/06.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let supoza1 = [1,2,3,4,5]
    let supoza2 = [2,1,2,3,2,4,2,5]
    let supoza3 = [3,3,1,1,2,2,4,4,5,5]
    var scores: [Int] = [0,0,0]
    
    for (number, answer) in answers.enumerated() {
        if supoza1[number % 5] == answer {
            scores[0] += 1
        }
        if supoza2[number % 8] == answer {
            scores[1] += 1
        }
        if supoza3[number % 10] == answer {
            scores[2] += 1
        }
    }
    
    let maxValue: Int = scores.max() ?? 0
    var result: [Int] = []
        
    for (number, score) in scores.enumerated() {
        if maxValue == score {
            result.append(number + 1)
        }
    }
    return result
}

