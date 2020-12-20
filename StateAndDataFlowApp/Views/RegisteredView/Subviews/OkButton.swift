//
//  OkButton.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct OkButton: View {
    let isValidName: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }
        }
        .disabled(!isValidName)
    }
}

struct OkButton_Previews: PreviewProvider {
    static var previews: some View {
        OkButton(isValidName: false, action: {})
    }
}
