//
//  2016년.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/13.
//

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let months: [Int] = [0,31,29,31,30,31,30,31,31,30,31,30,31]
    let day:[String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    let totalDay: Int = (months[0..<a].reduce(0, +) + b) % 7
    
    return day[totalDay]
}

