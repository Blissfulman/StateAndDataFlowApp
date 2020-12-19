//
//  StorageManager.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import Foundation
import Combine

final class StorageManager: ObservableObject {
    @Published var name: String = UserDefaults.standard.string(forKey: Constants.key) ?? "" {
        didSet {
            UserDefaults.standard.set(name, forKey: Constants.key)
        }
    }
}
