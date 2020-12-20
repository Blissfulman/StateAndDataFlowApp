//
//  SymbolCounterText.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct SymbolCounterText: View {
    let count: Int
    let isValidName: Bool
    
    var body: some View {
        Text("\(count)")
            .foregroundColor(isValidName ? .green : .red)
    }
}

struct SymbolCounterText_Previews: PreviewProvider {
    static var previews: some View {
        SymbolCounterText(count: 5, isValidName: true)
    }
}
