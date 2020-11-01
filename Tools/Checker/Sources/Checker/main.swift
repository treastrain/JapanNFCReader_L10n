import Foundation

func decode(from data: Data) -> [String : [String : String?]] {
    let decoder = JSONDecoder()
    do {
        return try decoder.decode([String : [String : String?]].self, from: data)
    } catch {
        fatalError(error.localizedDescription)
    }
}

let manager = FileManager()
manager.changeCurrentDirectoryPath("../../Strings")
print("Current directory path:", manager.currentDirectoryPath)
