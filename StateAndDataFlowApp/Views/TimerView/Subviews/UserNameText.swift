//
//  UserNameText.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct UserNameText: View {
    @ObservedObject var userManager = UserManager()
    
    var body: some View {
        Text("Hi, \(userManager.name)")
            .font(.largeTitle)
    }
}


struct UserNameText_Previews: PreviewProvider {
    static var previews: some View {
        UserNameText()
            .environmentObject(UserManager())
    }
}
