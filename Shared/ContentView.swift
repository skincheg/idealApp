//
//  ContentView.swift
//  Shared
//
//  Created by Артур Мугинов on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var screen = "Home"
    var body: some View {
        VStack {
            IdealInput(text: $text, title: "Login", placeholder: "Enter your login", imageLeading: "person", isPassword: false)
            
            IdealInput(text: $text, title: "Password", placeholder: "Enter your password", imageLeading: "lock", isPassword: true)
            Spacer()
            idealBottomMenu(screen: $screen)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
