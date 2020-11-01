//
//  decode.swift
//  
//
//  Created by treastrain on 2020/11/02.
//

import Foundation

func decode(from data: Data) throws -> [String : [String : String?]] {
    let decoder = JSONDecoder()
    return try decoder.decode([String : [String : String?]].self, from: data)
}
