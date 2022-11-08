//
//  ColoredRectangle.swift
//  SlidersSwiftUI
//
//  Created by Olga Yurchuk on 06.11.2022.
//

import SwiftUI

struct ColoredRectangle: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
            .frame(height: 150)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white, lineWidth: 5)
            )
            .shadow(radius: 5)
    }
}

struct ColoredRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ColoredRectangle(red: 100, green: 25, blue: 100)
    }
}
