//
//  Create Json File.swift
//  Standard Form TableView
//
//  Created by Nguyen Duc Hung on 16/08/2024.
//

//import Foundation
//
//// Dữ liệu JSON bạn muốn lưu
//let jsonObject: [String: Any] = [
//    "address": [
//        "street": "123 Main St",
//        "city": "Anytown",
//        "zipCode": "12345"
//    ]
//]
//
//// Chuyển đổi thành dữ liệu JSON
//if let jsonData = try? JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted) {
//    
//    // Đường dẫn nơi bạn muốn lưu file JSON (ví dụ: Desktop)
//    let filePath = FileManager.default.createFile(atPath: "Desktop", contents: "user_data.json")
//    
//    // Ghi dữ liệu vào file JSON
//    do {
//        try jsonData.write(to: filePath)
//        print("File JSON đã được tạo tại: \(filePath.path)")
//    } catch {
//        print("Lỗi khi tạo file JSON: \(error)")
//    }
//}
