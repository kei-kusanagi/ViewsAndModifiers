//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Juan Carlos Robledo Morales on 28/08/24.
//

import SwiftUI

struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.indigo)
            .clipShape(.capsule)
    }
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
                .foregroundStyle(.white)

            CapsuleText(text: "Second")
                .foregroundStyle(.yellow)
        }
    }
}


#Preview {
    ContentView()
}
