//
//  LogOutButton.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct LogOutButton: View {
    @EnvironmentObject var user: UserManager

    var body: some View {
        Button(action: { user.isRegistered = false }) {
            Text("Log out")
                .styled()
        }
        .styled(color: .blue)
    }
}

struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
    }
}
