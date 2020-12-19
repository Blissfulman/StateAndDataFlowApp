//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 17.12.2020.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
}
