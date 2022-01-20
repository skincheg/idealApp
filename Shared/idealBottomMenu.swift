//
//  idealBottomMenu.swift
//  inputTest
//
//  Created by Артур Мугинов on 20.01.2022.
//

import SwiftUI

struct idealBottomMenu: View {
    @Binding var screen : String
    var body: some View {
        VStack {
            Spacer()
            HStack {
                HStack {
                    IdealItemBottomMenu(screen: $screen, name: "Home", image: "house")
                    Spacer()
                    IdealItemBottomMenu(screen: $screen, name: "Person", image: "person")
                    Spacer()
                    IdealItemBottomMenu(screen: $screen, name: "Eye", image: "eye")
                    Spacer()
                    IdealItemBottomMenu(screen: $screen, name: "Homepod", image: "homepod")
                }
                .frame(width: UIScreen.main.bounds.width - 70, height: 70)
            }
            .frame(width: UIScreen.main.bounds.width, height: 80)
            .background(
                VStack {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width, height: 1, alignment: .top)
                        .foregroundColor(.black.opacity(0.1))
                        .shadow(color: .black, radius: 1, x: 0, y: -1)
                    Spacer()
                }
            )
        }
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct idealBottomMenu_Previews: PreviewProvider {
    static var previews: some View {
        idealBottomMenu(screen: .constant("Home"))
            
    }
}
