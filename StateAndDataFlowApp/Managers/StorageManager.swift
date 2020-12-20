//
//  StorageManager.swift
//  StateAndDataFlowApp
//
//  Created by User on 20.12.2020.
//

import SwiftUI

final class StorageManager: ObservableObject {

    static let shared = StorageManager()
    
    static let userDataKey = "user"
    
    @AppStorage(userDataKey) private var userData = Data()
    
    private init() {}
    
    func saveUser(user: User) {
        guard let userData = try? JSONEncoder().encode(user) else { return }
        self.userData = userData
    }
    
    func getUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData) else { return User() }
        return user
    }
    
    func clear(userManager: UserManager) {
        userManager.user.isRegistered = false
        userManager.user.name = ""
        UserDefaults.standard.removeObject(forKey: StorageManager.userDataKey)
    }
}
