//
//  convertToJSONString.swift
//  
//
//  Created by treastrain on 2020/11/02.
//

import Foundation

func convertToJSONString(from jsoncString: String) -> String {
    let jsoncMutableString = NSMutableString(string: jsoncString)
    
    let pattern = "\t\\//(.|[\\r\\n])*?\\n"
    let regex = try! NSRegularExpression(pattern: pattern)
    let count = regex.replaceMatches(in: jsoncMutableString, range: NSRange(jsoncString.startIndex..., in: jsoncString), withTemplate: "")
    if count != 0 {
        print(count, "件のコメント文を削除")
    }
    return jsoncMutableString as String
}
