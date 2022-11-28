//
//  주사위의 개수.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/28.
//

import Foundation

func solution(_ box:[Int], _ n:Int) -> Int {
    return (box[0] / n) * (box[1] / n) * (box[2] / n)
}
