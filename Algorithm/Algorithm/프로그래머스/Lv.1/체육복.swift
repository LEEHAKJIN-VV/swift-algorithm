//
//  체육복.swift
//  Algorithm
//
//  Created by 이학진 on 2022/12/08.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
   if lost == reserve { // 여별의 체육복을 가져온 사람이 모두 도난 당한 경우
       return n
    }
    // 여벌 체육복을 가져온 사람이 도난 당한 경우는 제거
    var lostStudents = lost.filter{!reserve.contains($0)}.sorted()
    var reserveStudents = reserve.filter{!lost.contains($0)}.sorted()

    for stu in reserveStudents {
        if let index = lostStudents.firstIndex(of: stu - 1) {
            lostStudents.remove(at: index)
            continue
        }
        
        if let index = lostStudents.firstIndex(of: stu + 1) {
            lostStudents.remove(at: index)
        }
    }
    return n - lostStudents.count
}
