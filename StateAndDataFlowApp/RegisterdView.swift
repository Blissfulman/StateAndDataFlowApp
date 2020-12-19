//
//  RegisterdView.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 16.12.2020.
//

import SwiftUI

struct RegisterdView: View {
    @State private var name = ""
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                SymbolCounterText(count: name.count)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
        }
        .padding()
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegistered = true
        }
    }
}

struct RegisterdView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterdView()
//            .environmentObject(UserManager())
    }
}
