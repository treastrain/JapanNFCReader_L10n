//
//  getStringContents.swift
//  
//
//  Created by treastrain on 2020/11/02.
//

import Foundation

func getStringContents(atPath path: String) -> Data? {
    return FileManager.default.contents(atPath: path)
}
