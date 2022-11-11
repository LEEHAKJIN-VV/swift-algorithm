import Foundation

func solution(_ n:Int) -> String {
    return (0..<n).map {
        ($0 % 2 == 0) ? "수" : "박"
    }.reduce("", +)
}

var result1 = solution(3)
var result2 = solution(4)
var result3 = solution(10000)

print(result1)
print(result2)
print(result3)
