//
//  IdealItemBottomMenu.swift
//  inputTest
//
//  Created by Артур Мугинов on 20.01.2022.
//

import SwiftUI

struct IdealItemBottomMenu: View {
    @Binding var screen : String
    var name : String = "Home"
    var image : String = "house"
    var body: some View {
        Button {
            withAnimation(.spring()) {
                screen = name
            }
        } label: {
            HStack(spacing: 5) {
                Image(systemName: image)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.red)
                if screen == name {
                    Text(name)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.red)
                    Spacer()
                }
            }
            .frame(width: screen == name ? 130 : 30, height: screen == name ? 50 : 30, alignment: .center)
            .padding(.leading, screen == name ? 20 : 0)
            .background(
                Capsule()
                    .foregroundColor(screen == name ? .red.opacity(0.4) : .red.opacity(0))
            )
        }

    }
}

struct IdealItemBottomMenu_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            IdealItemBottomMenu(screen: .constant("Home"), name: "Home", image: "house")
            IdealItemBottomMenu(screen: .constant("Home"), name: "Person", image: "person")
            IdealItemBottomMenu(screen: .constant("Home"), name: "Eye", image: "eye")
            IdealItemBottomMenu(screen: .constant("Home"), name: "Homepod", image: "homepod")
        }
    }
}
