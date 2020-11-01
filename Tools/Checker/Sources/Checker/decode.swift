//
//  decode.swift
//  
//
//  Created by treastrain on 2020/11/02.
//

import Foundation

func decode(from data: Data) -> [String : [String : String?]] {
    let decoder = JSONDecoder()
    do {
        return try decoder.decode([String : [String : String?]].self, from: data)
    } catch {
        fatalError(error.localizedDescription)
    }
}
