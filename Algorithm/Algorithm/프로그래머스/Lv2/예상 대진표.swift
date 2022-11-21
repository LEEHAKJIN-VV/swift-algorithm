//
//  예상 대진표.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/21.
//

import Foundation

/// a와b의 차이의 절대값으로 비교할 경우 (8,4,5) 입력에서 오류 발생
/// 그러므로 값의 차이가 아닌 매 라운드마다 그룹을 만드는 방식으로 만나는 지 판별
/// 그룹은 [Int:Int] 타입의 딕셔너리로 표현
///
/// ex) n = 8, a = 4, b = 7인 경우
/// 첫 라운드에는 //[[1,2], [3,4], [5,6], [7,8]] 총 4개의 그룹이 생김
/// 만약 두 참가자가 같은 value를 가진다면 그 라운드에서 만났다는 뜻
///
/// ex) 딕셔너리로 만든 그룹의 형태
/// [1: 1 3: 3 5: 5 7: 7]
/// [2: 1 4: 3 6: 5 8: 7]
/// 1번 참가자와 2번 참가자는 같은 value 1을 가지고 있음 => 같은 그룹, 5번 참가자와 6번 참가자는 value로 5를 가지고 있음 => 같은 그룹
/// 결국 같은 그룹이면 해당 라운드에 만났다고 결정함
/// 매 라운드마다 새로운 그룹을 만들며, a와 b참가자가 같은 그룹에 속하는 지 확인함
func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var answer = 1
    var a: Int = a
    var b: Int = b
    var n: Int = n
    
    // 제일 첫 번째 라운드 그룹 만들기
    var group: [Int:Int] = [:]
    for i in stride(from: 1, to: n, by: 2) {
        group[i] = i
        group[i+1] = i
    }
    
    while group[a]! != group[b]!{
        answer += 1
        // 다음 라운드 번호 배치
        a = (a % 2 == 0) ? a / 2 : a / 2 + 1
        b = (b % 2 == 0) ? b / 2 : b / 2 + 1
        n = n / 2
        
        for i in stride(from: 1, to: n, by: 2) { //새로운 그룹 생성
            group[i] = i
            group[i+1] = i
        }
    }
    return answer
}

// 1
//
//(1 2)
//
//(1 2) (3 4)
//
//(1 2) (3 4) (5 6) (7 8)
