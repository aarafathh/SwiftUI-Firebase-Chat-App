//
//  FirebaseManager.swift
//  SwiftUIFirebaseChat
//
//  Created by Arafath Hossain on 1/3/26.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseStorage

class FirebaseManager: NSObject {
    let auth: Auth
    let storage: Storage
    let firestore: Firestore
    
    static let shared = FirebaseManager()
    
    override init() {
        FirebaseApp.configure()
        self.auth = Auth.auth()
        self.storage = Storage.storage()
        self.firestore = Firestore.firestore()
        super.init()
    }
}
