//
//  BookMarkData.swift
//  Project_graduate
//
//  Created by 윤한솔 on 2023/05/10.
//

import Foundation

class BookMarkData {
    static let shared = BookMarkData()
    
    var bookmarkArray: [String] {
        get {
            return UserDefaults.standard.stringArray(forKey: "bookmarkArray") ?? []
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "bookmarkArray")
        }
    }
        
//    func addBookmark(withKey key: String) {
//        // 북마크 배열에 키를 추가
//        var array = bookmarkArray
//        array.append(key)
//        bookmarkArray = array
//    }
    func addBookmark(withKey key: String) {
        // 북마크 배열에 키가 이미 존재하는지 확인
        if !bookmarkArray.contains(key) {
            // 중복되지 않은 경우에만 키를 추가
            bookmarkArray.append(key)
        } else {
            print("The key is already in the bookmark array.")
        }
    }

        
    func removeBookmark(withKey key: String) {
        // 북마크 배열에서 키를 삭제
        var array = bookmarkArray
        if let index = array.firstIndex(of: key) {
            array.remove(at: index)
        }
           bookmarkArray = array
    }
    
}
