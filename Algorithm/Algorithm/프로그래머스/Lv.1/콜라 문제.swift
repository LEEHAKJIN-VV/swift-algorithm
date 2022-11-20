//
//  콜라 문제.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/20.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var a = a
    var b = b
    var n = n
    var cola: Int = 0
    
    while n >= a {
        let getCola = (n / a) * b
        cola += getCola
        n = getCola + n % a
    }
    return cola
}
