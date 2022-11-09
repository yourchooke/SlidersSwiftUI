//
//  ContentView.swift
//  SlidersSwiftUI
//
//  Created by Olga Yurchuk on 05.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = Double.random(in: 0...255)
    @State private var greenValue: Double = Double.random(in: 0...255)
    @State private var blueValue: Double = Double.random(in: 0...255)
    
    @FocusState private var colorIsFocused: Bool
    var body: some View {
        VStack {
            ColoredRectangle(

                    red: redValue,
                    green: greenValue,
                    blue: blueValue
            )
            ColorSliderView(value: $redValue, color: .red)
            ColorSliderView(value: $greenValue, color: .green)
            ColorSliderView(value: $blueValue, color: .blue)
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {
                    colorIsFocused = false
                }
            }
        }
        .focused($colorIsFocused)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
