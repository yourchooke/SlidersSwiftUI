//
//  ContentView.swift
//  SlidersSwiftUI
//
//  Created by Olga Yurchuk on 05.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 255/2
    @State private var greenValue: Double = 255/2
    @State private var blueValue: Double = 255/2
    
    var body: some View {
        VStack {
            ColoredRectangle(
                color: Color(
                    red: redValue/255,
                    green: greenValue/255,
                    blue: blueValue/255
                )
            )
            ColorSliderView(value: $redValue, color: .red)
            ColorSliderView(value: $greenValue, color: .green)
            ColorSliderView(value: $blueValue, color: .blue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
