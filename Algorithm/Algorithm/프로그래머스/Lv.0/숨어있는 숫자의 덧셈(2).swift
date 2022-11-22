//
//  숨어있는 숫자의 덧셈(2).swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/23.
//

import Foundation

func solution(_ my_string:String) -> Int {
    var my_string = my_string.map {
        return ($0.isLetter) ? "#" : String($0)
    }
    .joined()
    
    let splitArray = my_string.components(separatedBy: ["#"]).filter {
        !$0.isEmpty
    }
    var numList = splitArray.map {
        Int($0)!
    }
    
    return numList.reduce(0, +)
}
