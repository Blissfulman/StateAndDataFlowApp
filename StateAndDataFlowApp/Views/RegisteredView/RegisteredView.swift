//
//  RegisteredView.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 16.12.2020.
//

import SwiftUI

struct RegisteredView: View {
    @State private var isAllowedRegistration = false
    @State private var name = ""
    
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                // Со спейсером текстовое поле точнее центруется по горизонтали
                Spacer()
                NameTextField(name: $name,
                              isAllowedRegistration: $isAllowedRegistration)
                SymbolCounterText(count: name.count)
            }
            OkButton(isAllowedRegistration: isAllowedRegistration) {
                guard isAllowedRegistration else { return }
                user.name = name
                user.isRegistered = true
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
