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
            Slider(value: $redValue, in: 0...255)
            Slider(value: $greenValue, in: 0...255)
            Slider(value: $blueValue, in: 0...255)
        }
        .padding()
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
