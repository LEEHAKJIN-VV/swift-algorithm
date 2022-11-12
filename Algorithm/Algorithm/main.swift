import Foundation

//array    result
//[1, 2, 3, 3, 3, 4]    3
//[1, 1, 2, 2]    -1
//[1]    1

import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let months: [Int] = [0,31,29,31,30,31,30,31,31,30,31,30,31]
    let day:[String] = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    let totalDay: Int = (months[0..<a].reduce(0, +) + b) % 7
    
    return day[totalDay]
}

var result1 = solution(5,24)
var result2 = solution(1,2)
print(result1)




