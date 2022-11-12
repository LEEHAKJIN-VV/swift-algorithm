import Foundation

//emergency    result
//[3, 76, 24]    [3, 1, 2]
//[1, 2, 3, 4, 5, 6, 7]    [7, 6, 5, 4, 3, 2, 1]
//[30, 10, 23, 6, 100]    [2, 4, 3, 5, 1]

import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    let emergencySorted = emergency.sorted(by: >)
    return emergency.map {
        emergencySorted.firstIndex(of: $0)! + 1
    }
}

var result1 = solution([3, 76, 24])
var result2 = solution([1, 2, 3, 4, 5, 6, 7]  )
var result3 = solution([30, 10, 23, 6, 100])

print(result1)
print(result2)
print(result3)


