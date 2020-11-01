import Foundation


let manager = FileManager()
manager.changeCurrentDirectoryPath("../../Strings")
print("Current directory path:", manager.currentDirectoryPath)
let paths = getStringFilePaths(manager: manager)
print(paths)
