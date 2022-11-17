//
//  햄버거만들기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/17.
//

import Foundation

func solution(_ ingredient:[Int]) -> Int {
    if ingredient.count < 4 {
        return 0
    }
    let hambuger: [Int] = [1,2,3,1]
    
    if ingredient.elementsEqual(hambuger) {
        return 1
    }
    
    var end: Int = 0
    var count: Int = 0
    var stack: [Int] = []
    
    for ingredi in ingredient {
        stack.append(ingredi)
        end += 1
        if stack.count < 4 {
            continue
        }
        
        if Array(stack[end - 4 ..< end]).elementsEqual(hambuger) {
            stack.removeSubrange(end - 4 ..< end)
            end -= 4
            count += 1
        }
    }
    
    return count
}
