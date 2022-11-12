import Foundation

//array    result
//[1, 2, 3, 3, 3, 4]    3
//[1, 1, 2, 2]    -1
//[1]    1

import Foundation
//
//letter    result
//".... . .-.. .-.. ---"    "hello"
//".--. -.-- - .... --- -."    "python"

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
