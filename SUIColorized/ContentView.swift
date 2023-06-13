//
//  ContentView.swift
//  SUIColorized
//
//  Created by Danila Kornev on 13.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var valueRed = Double.random(in: 0...255)
    @State private var valueGreen = Double.random(in: 0...255)
    @State private var valueBlue = Double.random(in: 0...255)
    
    var body: some View {
        
        VStack {
            RoundedRectangle(cornerRadius: 20.0)
                .frame(height: 250)
                .foregroundColor(Color(red: valueRed/255, green: valueGreen/255, blue: valueBlue/255))
            SliderView(value: $valueRed).accentColor(.red)
            SliderView(value: $valueGreen).accentColor(.green)
            SliderView(value: $valueBlue).accentColor(.blue)
            Spacer()
        }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SliderView: View {
    @Binding var value: Double
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .font(.title2)
                .fontWeight(.medium)
                .frame(width: 42)
            
            Slider(value: $value, in: 0...255, step: 1)
        }
        .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
    }
}
