//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 17.12.2020.
//

import Foundation
import Combine

final class UserManager: ObservableObject {
    @Published var isRegistered: Bool = StorageManager().name != ""
}
