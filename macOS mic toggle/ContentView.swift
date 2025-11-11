//
//  ContentView.swift
//  macOS mic toggle
//
//  Created by никита никита on 11.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var isMuted = false
    
    var body: some View {
        VStack(spacing: 16) {
            Button {
                let newValue = !isMuted
                MicController.shared.setMuted(newValue)
                isMuted = newValue
            } label: {
                Image(systemName: isMuted ? "mic.slash" : "mic")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
            }

            .keyboardShortcut(.space, modifiers: []) // по желанию
        }
        .padding()
        .frame(width: 220, height: 120)
    }
}
