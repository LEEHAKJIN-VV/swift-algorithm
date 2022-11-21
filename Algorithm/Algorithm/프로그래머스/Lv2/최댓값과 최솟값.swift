//
//  최댓값과 최솟값.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/21.
//

import Foundation

// O(n * logn)
// func solution(_ s:String) -> String {
//     let sortedNumber = s.components(separatedBy: " ").map{Int($0)!}
//         .sorted()
    
//     return "\(sortedNumber.first!) \(sortedNumber.last!)"
// }

// O(n) + O(n)
func solution(_ s:String) -> String {
    let sortedNumber = s.components(separatedBy: " ").map{Int($0)!}
    
    return "\(sortedNumber.min()!) \(sortedNumber.max()!)"
}
