//
//  StartTimerButton.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct StartTimerButton: View {
    @StateObject var timer: TimeCounter
    
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text("\(timer.buttonTitle)")
                .styled()
        }
        .styled(color: timer.isInProcess ? .gray : .red)
        .disabled(timer.isInProcess)
    }
}

struct StartTimerButton_Previews: PreviewProvider {
    static var previews: some View {
        StartTimerButton(timer: TimeCounter())
    }
}
