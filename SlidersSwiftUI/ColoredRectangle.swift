//
//  ColoredRectangle.swift
//  SlidersSwiftUI
//
//  Created by Olga Yurchuk on 06.11.2022.
//

import SwiftUI

struct ColoredRectangle: View {
    
    var color: Color
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .foregroundColor(color)
            .frame(height: 150)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white, lineWidth: 5)
            )
            .shadow(radius: 5)
            .padding()
    }
}

struct ColoredRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ColoredRectangle(color: .yellow)
    }
}
