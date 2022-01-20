//
//  IdealInput.swift
//  inputTest
//
//  Created by Артур Мугинов on 20.01.2022.
//

import SwiftUI

struct IdealInput: View {
    @Binding var text : String
    @State var showPassword = false
    var title : String
    var placeholder : String
    var imageLeading : String
    var isPassword : Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .padding(.leading, 25)
            if !isPassword {
                TextField("", text: $text, prompt: Text(placeholder))
                    .padding(.leading, 25)
                    .frame(width: UIScreen.main.bounds.width - 50, height: 40)
                    .background(
                        Image(systemName: imageLeading)
                            .font(.system(size: 20))
                        , alignment: .leading
                    )

                    .background(
                        Rectangle()
                            .frame(width: UIScreen.main.bounds.width - 76, height: 2)
                        , alignment: .bottomTrailing
                    )
            } else {
                if !showPassword {
                    SecureField("", text: $text, prompt: Text(placeholder))
                        .padding(.leading, 25)
                        .frame(width: UIScreen.main.bounds.width - 50, height: 40)
                        .background(
                            Image(systemName: imageLeading)
                                .font(.system(size: 20))
                            , alignment: .leading
                        )
                        .overlay(
                            Button(action: {
                                showPassword.toggle()
                            }, label: {
                                Image(systemName: showPassword ? "eye" : "eye.slash")
                                    .font(.system(size: 20))
                            })
                            , alignment: .trailing
                        )
                        .background(
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width - 76, height: 2)
                            , alignment: .bottomTrailing
                        )
                } else {
                    TextField("", text: $text, prompt: Text(placeholder))
                        .padding(.leading, 25)
                        .frame(width: UIScreen.main.bounds.width - 50, height: 40)
                        .background(
                            Image(systemName: imageLeading)
                                .font(.system(size: 20))
                            , alignment: .leading
                        )
                        .overlay(
                            Button(action: {
                                showPassword.toggle()
                            }, label: {
                                Image(systemName: showPassword ? "eye" : "eye.slash")
                                    .font(.system(size: 20))
                            })
                            , alignment: .trailing
                        )
                        .background(
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width - 76, height: 2)
                            , alignment: .bottomTrailing
                        )
                }
            }
        }
    }
}

struct IdealInput_Previews: PreviewProvider {
    static var previews: some View {
        IdealInput(text: .constant(""), title: "Password", placeholder: "Enter your password", imageLeading: "person", isPassword: true)
    }
}
