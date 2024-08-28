//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Juan Carlos Robledo Morales on 28/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.red)
//        
        Button("Hello, world!") {
            // do nothing
        }
        .frame(width: 200, height: 200)
        .background(.red)
        Text("Hello, world!")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
    }
}

#Preview {
    ContentView()
}
