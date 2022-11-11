//
//  수박수박수박수박수?.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/11.
//


import Foundation

func solution(_ n:Int) -> String {
    return (0..<n).map {
        ($0 % 2 == 0) ? "수" : "박"
    }.reduce("", +)
}



