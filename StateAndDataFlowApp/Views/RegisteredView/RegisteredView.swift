//
//  RegisteredView.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 16.12.2020.
//

import SwiftUI

struct RegisteredView: View {
    @EnvironmentObject var userManager: UserManager

    var body: some View {
        VStack {
            HStack {
                // Со спейсером текстовое поле точнее центруется по горизонтали
                Spacer()
                NameTextField(name: $userManager.user.name)
                SymbolCounterText(count: userManager.user.name.count,
                                  isValidName: userManager.isValidName)
            }
            OkButton(isValidName: userManager.isValidName) {
                userManager.user.isRegistered = true
                StorageManager.shared.saveUser(user: userManager.user)
            }
        }
        .padding()
    }
}

struct RegisterdView_Previews: PreviewProvider {
    static var previews: some View {
        RegisteredView()
            .environmentObject(UserManager())
    }
}
