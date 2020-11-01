//
//  getStringFilePaths.swift
//  
//
//  Created by treastrain on 2020/11/02.
//

import Foundation

func getStringFilePaths(manager: FileManager) -> [String] {
    do {
        let contents = try manager.contentsOfDirectory(atPath: manager.currentDirectoryPath).sorted()
        return contents
    } catch {
        fatalError(error.localizedDescription)
    }
}
