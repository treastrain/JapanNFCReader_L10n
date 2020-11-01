//
//  getStringFilePaths.swift
//  
//
//  Created by treastrain on 2020/11/02.
//

import Foundation

func getStringFilePaths(manager: FileManager) throws -> [String] {
    return try manager.contentsOfDirectory(atPath: manager.currentDirectoryPath).sorted()
}
