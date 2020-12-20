//
//  LogOutButton.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct LogOutButton: View {
    @EnvironmentObject var userManager: UserManager

    var body: some View {
        Button(action: buttonTapped) {
            Text("Log out")
                .styled()
        }
        .styled(color: .blue)
    }
    
    private func buttonTapped() {
        userManager.user.name = ""
        userManager.user.isRegistered = false
        StorageManager.shared.clear(userManager: userManager)
    }
}

struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
            .environmentObject(UserManager())
    }
}
