//
//  CustomTextFieldView.swift
//  FitArena
//
//  Created by CS on 4/16/22.
//

import SwiftUI

struct CustomTextFieldView: View {
    
    var minWidth: CGFloat
    var placeholder: String
    @Binding var text: String
    var isPassword: Bool
    
    var body: some View {
        if isPassword {
            SecureField(placeholder, text: $text)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.theme.placeholder)
                        .frame(minWidth: minWidth)
                )
                .padding(.horizontal, 20)
                .autocapitalization(.none)
                .disableAutocorrection(true)
        } else {
            TextField(placeholder, text: $text)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.theme.placeholder)
                        .frame(minWidth: minWidth)
                )
                .padding(.horizontal, 20)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .textInputAutocapitalization(.never)
                .keyboardType(.emailAddress)
                .textContentType(.emailAddress)
        }
    }
}

struct CustomTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFieldView(minWidth: 250, placeholder: "Username", text: .constant(""), isPassword: true)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
