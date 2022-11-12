//
//  최빈값구하기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/12.
//

import Foundation

func solution(_ array:[Int]) -> Int {
    var countDict: [Int:Int] = [:]
    
    for num in array {
        countDict[num] = countDict[num, default: 0] + 1
    }
    
    let sortedDict = countDict.sorted { first, second in
        first.value > second.value
    }
    if sortedDict.count == 1 {
        return sortedDict.first!.key
    }
    
    return (sortedDict[0].value == sortedDict[1].value) ? -1 : sortedDict[0].key
}
