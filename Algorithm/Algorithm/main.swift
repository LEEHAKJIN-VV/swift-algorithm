//////
//////  main.swift
//////  Algorithm
//////
//////  Created by 이학진 on 2022/11/06.
//////
////
////import Foundation
////
//////var map: [[Int]: Int] = [:]
////
////func solution(_ score:[[Int]]) -> [Int] {
////    var map: [[Int]: Int] = [:]
////    var result: [Int] = []
////    for sc in score {
////        print(sc)
////        map[sc] = (sc[0] + sc[1]) / 2
////    }
////
////    let sortedDict = map.sorted { first, second in
////        return first.value > second.value
////    }
////
////    var rank: Int = 1
////    var preScore: Int = -1
////
////    for sc in score {
////        let index: Int = sortedDict.firstIndex { $0.key == sc }!
////        result.append(index)
////    }
////
////    return result
////}
////
//////print(map)
////
////var result1 = solution([[80, 70], [90, 50], [40, 70], [50, 80]])
////var result2 = solution([[80, 70], [70, 80], [30, 50], [90, 100], [100, 90], [100, 100], [10, 30]])
////
////print(result1)
////print(result2)
//
////
////  main.swift
////  Algorithm
////
////  Created by 이학진 on 2022/11/06.
////
//
//import Foundation
//
////var map: [[Int]: Int] = [:]
//
//func solution(_ score:[[Int]]) -> [Int] {
//    var result: [Int] = []
//    var averages: [Int] = []
//    for sc in score {
//        averages.append((sc[0] + sc[1]) / 2)
//    }
//
//    for avg in averages {
//
//
//    }
//
//    return result
//}
//
////print(map)
//
//var result1 = solution([[80, 70], [90, 50], [40, 70], [50, 80]])
//var result2 = solution([[80, 70], [70, 80], [30, 50], [90, 100], [100, 90], [100, 100], [10, 30]])
//
//print(result1)
//print(result2)


import Foundation

/// 집합은 중복을 허용하지 않음
/// Array(Set) => 배열로 변환 가능
func solution(_ numbers:[Int]) -> [Int] {
    var numSet = Set<Int>()
    
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            numSet.insert(numbers[i] + numbers[j])
        }
    }
    return Array(numSet).sorted()
}

var result1 = solution([2,1,3,4,1])
var result2 = solution([5,0,2,7])

print(result1)
print(result2)

