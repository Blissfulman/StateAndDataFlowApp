//
//  SymbolCounterText.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct SymbolCounterText: View {
    let count: Int
    
    @State private var textColor = Color.red
    
    var body: some View {
        Text("\(count)")
            .foregroundColor(textColor)
            .onChange(of: count) { count in
                switch count {
                case ..<3:
                    textColor = Color.red
                default:
                    textColor = Color.green
                }
            }
    }
}

struct SymbolCounterText_Previews: PreviewProvider {
    static var previews: some View {
        SymbolCounterText(count: 4)
    }
}
