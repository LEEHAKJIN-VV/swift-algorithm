//
//  다음에 올 숫자.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/14.
//

import Foundation

/// 생각해야 하는 특별한 경우의 수
/// 1. 공비가 1인 경우는 => 첫번째와 두번째가 같음
/// 2. 공비가 2인경우와 공차가 2인 경우 구분하는 방법
/// 3. 첫번째와 두번째 그리고 세번째 인덱스까지는 비교해야 알수있을듯
/// 4. 실제로 입력되는 데이터의 길이는 3이상임
/// 5. 원소는 음수도 가능함 => 절대값으로 하면 안될듯

func solution(_ common:[Int]) -> Int {
    return (common[1] - common[0] == common[2] - common[1]) ? common.last! + common[1] - common[0] : common.last! * (common[1] / common[0])
}
