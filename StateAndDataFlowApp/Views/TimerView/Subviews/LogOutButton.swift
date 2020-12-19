//
//  LogOutButton.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct LogOutButton: View {
    @EnvironmentObject var userManager: UserManager
    @ObservedObject var storageManager = StorageManager()

    var body: some View {
        Button(action: buttonTapped) {
            Text("Log out")
                .styled()
        }
        .styled(color: .blue)
    }
    
    private func buttonTapped() {
        storageManager.name = ""
        userManager.isRegistered = false
    }
}

struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
    }
}
