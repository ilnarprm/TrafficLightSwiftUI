//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Ильнар Ижгузин on 16.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State var textButton = "START"
    @State var opacityRed = 0.5
    @State var opacityYelow = 0.5
    @State var opacityGreen = 0.5
    @State var currentLight = CurrentLight.red
    
    private let lightingIsOn = 1
    private let lightingIsOff = 0.5
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.black
                .ignoresSafeArea()
            VStack {
                LightingCircleView(color: .red, opacity: opacityRed)
                    .padding()
                LightingCircleView(color: .yellow, opacity: opacityYelow)
                    .padding(.bottom)
                LightingCircleView(color: .green, opacity: opacityGreen)
                Spacer()
                Button {
                    textButton = "NEXT"
                    switch currentLight {
                        case .red:
                            opacityGreen = 0.5
                            opacityRed = 1
                            currentLight = .yelow
                        case .yelow: 
                            opacityRed = 0.5
                            opacityYelow = 1
                            currentLight = .green
                        case .green:
                            opacityYelow = 0.5
                            opacityGreen = 1
                            currentLight = .red
                    }
                    
                } label: {
                    Text(textButton)
                        .font(.title)
                }
            }
            .padding()
        }
    }
    enum CurrentLight {
        case red, yelow, green
    }
}

#Preview {
    ContentView()
}
