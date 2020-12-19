//
//  TimerView.swift
//  StateAndDataFlowApp
//
//  Created by Alexey Efimov on 16.12.2020.
//

import SwiftUI

struct TimerView: View {
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            UserNameText()
            Spacer()
            TimerCounterText(value: timer.counter)
            Spacer()
            StartTimerButton(timer: timer)
            Spacer()
            Spacer()
            LogOutButton()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
            .environmentObject(UserManager())
    }
}
