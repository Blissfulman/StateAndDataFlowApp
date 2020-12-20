//
//  StorageManager.swift
//  StateAndDataFlowApp
//
//  Created by User on 20.12.2020.
//

import Foundation

final class StorageManager: ObservableObject {

    static let shared = StorageManager()
    
    private let userDefaults = UserDefaults.standard
    private let userDataKey = "user"
    
    private init() {}
    
    func saveUser(user: User) {
        guard let userData = try? JSONEncoder().encode(user) else { return }
        userDefaults.set(userData, forKey: userDataKey)
    }
    
    func getUser() -> User {
        guard let userData = userDefaults.object(forKey: userDataKey) as? Data else { return User() }
        guard let user = try? JSONDecoder().decode(User.self, from: userData) else { return User() }
        return user
    }
    
    func clear(userManager: UserManager) {
        userManager.user.isRegistered = false
        userManager.user.name = ""
        userDefaults.removeObject(forKey: userDataKey)
    }
}
