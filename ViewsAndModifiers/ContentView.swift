//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Juan Carlos Robledo Morales on 28/08/24.
//

import SwiftUI

//struct Title: ViewModifier {
//    func body(content: Content) -> some View {
//        content
//            .font(.largeTitle)
//            .foregroundStyle(.white)
//            .padding()
//            .background(.blue)
//            .clipShape(RoundedRectangle(cornerRadius: 10))
//    }
//}
//
//
//struct ContentView: View {
//    var body: some View {
//        Text("Hello World")
//            .modifier(Title())
//    }
//}

struct AvatarStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.blue, lineWidth: 2))
            .shadow(radius: 10)
    }
}
extension View {
    func avatarStyle() -> some View {
        modifier(AvatarStyle())
    }
}
struct ContentView: View {
    var body: some View {
        VStack {
            Image("user_avatar")
                .resizable()
                .frame(width: 100, height: 100)
                .avatarStyle()

            Text("User Name")
                .font(.headline)
                .padding(.top, 10)
        }
    }
}


#Preview {
    ContentView()
}
