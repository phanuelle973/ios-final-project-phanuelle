//
//  AuthManager.swift
//  BibleReels
//
//  Created by Phanuelle Manuel on 4/26/25.
//

import Foundation
class AuthManager {
    static let shared = AuthManager()

    func login(email: String, password: String, completion: (Bool) -> Void) {
        // Placeholder login logic
        completion(true)
    }

    func signUp(username: String, email: String, password: String, completion: (Bool) -> Void) {
        // Placeholder signup logic
        completion(true)
    }
}
