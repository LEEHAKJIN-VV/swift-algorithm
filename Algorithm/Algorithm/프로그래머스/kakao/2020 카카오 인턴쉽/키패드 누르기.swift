//
//  키패드 누르기.swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/21.
//

import Foundation

enum Hand: String {
    case left = "L"
    case right = "R"
}

func solution(_ numbers:[Int], _ hand:String) -> String {
    let keyPad: [Int: [Int]] = [
        1: [0,0], 2: [0,1], 3: [0,2],
        4: [1,0], 5: [1,1], 6: [1,2],
        7: [2,0], 8: [2,1], 9: [2,2],
        10: [3,0], 0: [3,1], 12: [3,2],
    ]
    var leftHand: [Int] = [3,0]
    var rightHand: [Int] = [3,2]
    var moveHand: Hand
    var result: String = ""
    
    for num in numbers {
        let next: [Int] = keyPad[num]!
        
        switch num {
        case 1,4,7:
            moveHand = .left
        case 3,6,9:
            moveHand = .right
        default:
            let leftDis = abs(next[0] - leftHand[0]) + abs(next[1] - leftHand[1])
            let rightDis = abs(next[0] - rightHand[0]) + abs(next[1] - rightHand[1])
            
            if leftDis < rightDis {
                moveHand = .left
            } else if leftDis > rightDis {
                moveHand = .right
            } else {
                moveHand = (hand == "left") ? .left : .right
            }
        }
        
        if moveHand == .left {
            leftHand = next
        } else {
            rightHand = next
        }
        result += moveHand.rawValue
    }
    return result
}
