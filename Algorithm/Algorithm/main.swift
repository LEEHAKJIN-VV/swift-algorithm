import Foundation

//numbers               k   result
//[1, 2, 3, 4]          2    3
//[1, 2, 3, 4, 5, 6]    5    3
//[1, 2, 3]             3    2


func solution(_ numbers:[Int], _ k:Int) -> Int {
    let personCount: Int = numbers.count
    var currentBallIndex: Int = 0
    
    for _ in 0..<k - 1{
        currentBallIndex = (currentBallIndex + 2) % personCount
    }
    return numbers[currentBallIndex]
}

var result1 = solution([1, 2, 3, 4], 2) // 3
var result2 = solution([1, 2, 3, 4, 5, 6], 5) // 3
var result3 = solution([1, 2, 3], 3) // 2
var result4 = solution([1, 2], 3)

print(result1)
print(result2)
print(result3)
print(result4)


