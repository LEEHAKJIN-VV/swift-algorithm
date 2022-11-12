//
//  모스부호(1).swift
//  Algorithm
//
//  Created by 이학진 on 2022/11/12.
//

import Foundation

func solution(_ letter:String) -> String {
    let morseCode: [String:String] = [
        ".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f",
        "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
        "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
        "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
        "-.--":"y","--..":"z"
    ]
    var result = ""
    let splitLetter = letter.components(separatedBy: " ")
    
    for cypher in splitLetter {
        result += morseCode[cypher, default: ""]
    }
    return result
}
