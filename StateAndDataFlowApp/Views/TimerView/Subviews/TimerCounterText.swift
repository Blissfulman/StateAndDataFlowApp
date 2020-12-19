//
//  TimerCounterText.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct TimerCounterText: View {
    let value: Int
    
    var body: some View {
        Text("\(value)")
            .font(.largeTitle)    }
}

struct TimerCounterText_Previews: PreviewProvider {
    static var previews: some View {
        TimerCounterText(value: 3)
    }
}
