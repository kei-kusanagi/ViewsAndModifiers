//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Juan Carlos Robledo Morales on 28/08/24.
//

import SwiftUI

struct LargeBlueTitle: ViewModifier{
    func body(content: Content) -> some View{
        content.font(.largeTitle)
            .bold()
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
}

extension View{
    func largeBluetitle() -> some View{
        self.modifier(LargeBlueTitle())
    }
}

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
//                .font(.headline)
//                .padding(.top, 10)
                .largeBluetitle()
        }
    }
}


#Preview {
    ContentView()
}
