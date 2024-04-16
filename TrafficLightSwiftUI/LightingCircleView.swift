//
//  LightingCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Ильнар Ижгузин on 16.04.2024.
//

import SwiftUI

struct LightingCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundStyle(color)
            .opacity(opacity)
            .overlay(Circle().stroke(.white, lineWidth: 4))
    }
}

#Preview {
    LightingCircleView(color:.red, opacity: 0.5)
}
