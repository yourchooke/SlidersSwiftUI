//
//  ColorSliderView.swift
//  SlidersSwiftUI
//
//  Created by Olga Yurchuk on 06.11.2022.
//

import SwiftUI

struct ColorSliderView: View {
    @State private var value: Double = 255/2
    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255)
            TextField("", value: $value, formatter: NumberFormatter())
                .frame(width: 50)
                .textFieldStyle(.roundedBorder)
                
        }
        .padding()
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView()
    }
}
