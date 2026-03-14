//
//  ChatUser.swift
//  SwiftUIFirebaseChat
//
//  Created by Arafath Hossain on 14/3/26.
//
import Foundation

struct ChatUser {
    let uid, email, profileImageUrl: String
    
    init(data: [String: Any]) {
        self.uid = data["uid"] as? String ?? ""
        self.email = data["email"] as? String ?? ""
        self.profileImageUrl = data["profileImageUrl"] as? String ?? ""
    }
}
