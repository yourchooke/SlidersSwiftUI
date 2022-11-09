//
//  ColorSliderView.swift
//  SlidersSwiftUI
//
//  Created by Olga Yurchuk on 06.11.2022.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    var color: Color



    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
            TextField("", value: $value, formatter: NumberFormatter())
                .frame(width: 50)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
                
        }
        .padding()
    }
    

}
