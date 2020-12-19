//
//  NameTextField.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct NameTextField: View {
    @Binding var name: String
    @Binding var isAllowedRegistration: Bool

    var body: some View {
        TextField("Enter your name", text: $name)
            .multilineTextAlignment(.center)
            .onChange(of: name) { newName in
                isAllowedRegistration = newName.count > 2 ? true : false
            }
    }
}

struct NameTextField_Previews: PreviewProvider {
    static var previews: some View {
        NameTextField(name: .constant(""), isAllowedRegistration: .constant(true))
    }
}
