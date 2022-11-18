//
//  외계어사전.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/18.
//

import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    var dict = dic
    
    for word in spell {
        dict = dict.filter {$0.contains(word)}
    }
    return dict.isEmpty ? 2 : 1
}
