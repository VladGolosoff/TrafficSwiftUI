//
//  ContentView.swift
//  TrafficSwiftUI
//
//  Created by Владислав Голосов on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Private properties
    
    @State private var nextSignal = 0
    @State private var redLight = ColorCircleView(color: .red, opacity: 0.3)
    @State private var yellowLight = ColorCircleView(color: .yellow, opacity: 0.3)
    @State private var greenLight =  ColorCircleView(color: .green, opacity: 0.3)
    
    // MARK: - Public properties
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    redLight
                    yellowLight
                    greenLight
                }
                .padding()
                Spacer(minLength: 180)
                Button(action: {
                    switch nextSignal {
                    case 0:
                        greenLight = ColorCircleView(color: .green, opacity: 0.3)
                        redLight = ColorCircleView(color: .red, opacity: 1)
                        nextSignal = 1
                    case 1:
                        redLight = ColorCircleView(color: .red, opacity: 0.3)
                        yellowLight = ColorCircleView(color: .yellow, opacity: 1)
                        nextSignal = 2
                    case 2:
                        yellowLight = ColorCircleView(color: .yellow, opacity: 0.3)
                        greenLight = ColorCircleView(color: .green, opacity: 1)
                        nextSignal = 0
                    default:
                        break
                    }
                }) {
                    if greenLight.opacity == 0.3 &&
                        redLight.opacity == 0.3 &&
                        yellowLight.opacity == 0.3 {
                        Text("START").font(.title)
                        
                    } else {
                        Text("NEXT").font(.title)
                    }
                }}
            .buttonStyle(.borderedProminent)
        }
    }
}
// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
            .preferredColorScheme(.dark)
        
    }
}

