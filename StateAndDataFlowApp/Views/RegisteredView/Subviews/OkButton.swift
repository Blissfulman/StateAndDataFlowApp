//
//  OkButton.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct OkButton: View {
    let isAllowedRegistration: Bool
    let action: () -> Void
    
    @EnvironmentObject var user: UserManager

    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }
        }
        .disabled(!isAllowedRegistration)
    }
}

struct OkButton_Previews: PreviewProvider {
    static var previews: some View {
        OkButton(isAllowedRegistration: false, action: {})
    }
}
