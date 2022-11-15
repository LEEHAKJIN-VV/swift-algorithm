

import Foundation


func solution(_ s:String) -> String {
    var charSet: Set<Character> = []
    var result: Set<Character> = []
    
    for ch in s {
        if !charSet.contains(ch) {
            result.insert(ch)
            charSet.insert(ch)
        } else {
            result.remove(ch)
        }
    }
    return String(result.sorted(by: <))
}
