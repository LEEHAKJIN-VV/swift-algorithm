
import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let direction: [String:[Int]] = [
        "left": [-1,0],
        "right": [1,0],
        "up": [0,1],
        "down": [0,-1]
    ]
    let mapSize: [Int] = [board[0] / 2, board[1] / 2]
    var location: [Int] = [0,0]
    
    // 다음 움직일 좌표가 맵을 벗어나는 경우 continue하여 현재입력된 keyinput 무시
    for command in keyinput {
        let move = direction[command]!
        if abs(move[0] + location[0]) > mapSize[0] || abs(move[1] + location[1]) > mapSize[1] {
            continue
        }
        location[0] += move[0]
        location[1] += move[1]
    }
    return location
}



