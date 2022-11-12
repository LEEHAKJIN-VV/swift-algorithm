import Foundation

//array    result
//[1, 2, 3, 3, 3, 4]    3
//[1, 1, 2, 2]    -1
//[1]    1

func solution(_ array:[Int]) -> Int {
    var countDict: [Int:Int] = [:]
    
    for num in array {
        countDict[num] = countDict[num, default: 0] + 1
    }
    
    let sortedDict = countDict.sorted { first, second in
        first.value > second.value
    }
    if sortedDict.count == 1 {
        return sortedDict.first!.key
    }
    
    return (sortedDict[0].value == sortedDict[1].value) ? -1 : sortedDict[0].key
}


