//
//  StyledModifierButton.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct StyledModifierButton: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4)
            )
    }
}

extension Button {
    func styled(color: Color) -> some View {
        ModifiedContent(content: self,
                        modifier: StyledModifierButton(color: color))
    }
}
