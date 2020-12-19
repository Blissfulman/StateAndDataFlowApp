//
//  StyledModifierText.swift
//  StateAndDataFlowApp
//
//  Created by User on 19.12.2020.
//

import SwiftUI

struct StyledModifierText: ViewModifier {
    func body(content: Content) -> some View {
        content
//            .font(.title)
//            .fontWeight(.bold)
//            .foregroundColor(.white)
    }
}

extension Text {
    func styled() -> some View {
        ModifiedContent(
            content: self
                .font(.title)
                .bold()
                .foregroundColor(.white),
            modifier: StyledModifierText()
        )
    }
}
