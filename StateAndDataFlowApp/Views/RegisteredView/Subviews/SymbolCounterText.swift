//
//  SymbolCounterText.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct SymbolCounterText: View {
    let count: Int
    
    var body: some View {
        Text("\(count)")
            .foregroundColor(count > 2 ? .green : .red)
    }
}

struct SymbolCounterText_Previews: PreviewProvider {
    static var previews: some View {
        SymbolCounterText(count: 4)
    }
}
