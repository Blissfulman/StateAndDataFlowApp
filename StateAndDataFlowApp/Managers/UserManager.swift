//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import Foundation

final class UserManager: ObservableObject {
    private static let key = "name"
    
    @Published var name: String = UserDefaults.standard.string(forKey: key) ?? "" {
        didSet {
            UserDefaults.standard.set(name, forKey: Self.key)
        }
    }
}
