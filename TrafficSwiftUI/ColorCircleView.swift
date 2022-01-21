//
//  ColorCircleView.swift
//  TrafficSwiftUI
//
//  Created by Владислав Голосов on 20.01.2022.
//

import SwiftUI

struct ColorCircleView: View {
    var color: Color
    var opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
   
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 0.3)
    }
}
