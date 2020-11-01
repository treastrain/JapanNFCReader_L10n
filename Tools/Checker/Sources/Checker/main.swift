import Foundation


print()
let manager = FileManager()
manager.changeCurrentDirectoryPath("../../Strings")

let paths: [String]
do {
    paths = try getStringFilePaths(manager: manager)
} catch {
    fatalError(error.localizedDescription)
}

var passedCount = 0
for path in paths {
    guard let url = URL(string: path),
          (url.pathExtension == "jsonc" || url.pathExtension == "json") else {
        print("⏭️", "\(path) was skipped because it's not a jsonc / json file.")
        passedCount += 1
        continue
    }
    
    guard let jsoncData = getStringContents(atPath: path) else {
        print("❌", "Could not get the contents of \(path)")
        continue
    }

    guard let jsoncString = String(data: jsoncData, encoding: .utf8) else {
        print("❌", "\(path) data is not encoded by UTF-8.")
        continue
    }
    
    let jsonString = convertToJSONString(from: jsoncString)
    guard let jsonData = jsonString.data(using: .utf8) else {
        print("❌", "Could not convert \(path) to UTF-8 data.")
        continue
    }

    do {
        _ = try decode(from: jsonData)
    } catch {
        print("❌", path, "Decode error:", error.localizedDescription)
        continue
    }
    
    print("✅", path)
    passedCount += 1
}

print()
if passedCount == paths.count {
    print("🎉", "All files have been checked.")
    exit(0)
} else {
    print("❌", "\(paths.count - passedCount) error(s) have occurred.")
    exit(1)
}
