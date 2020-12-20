//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import Foundation

final class UserManager: ObservableObject {
    @Published var user = User()
    
    var isValidName: Bool {
        user.name.count > 2
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isRegistered = false
}
