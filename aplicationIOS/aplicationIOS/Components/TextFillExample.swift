//
//  TextFillExample.swift
//  aplicationIOS
//
//  Created by Glen on 27-07-24.
//

import SwiftUI

struct TextFillExample: View {
    @State var Email = ""
    @State var password = ""
    var body: some View {
        VStack {
            TextField("Escribe tu Email", text: $Email)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.3))
                .foregroundColor(.black)
                .cornerRadius(15)
                .padding(.horizontal, 32)
                .onChange(of: Email) {oldValue, newValue in
                    print("el antiguo valor es \(oldValue) y el nuevo valor es: \(newValue)")
            }
            SecureField("Escribe tu contraseña", text: $password)
                .keyboardType(.emailAddress)
                .padding(16)
                .background(.gray.opacity(0.3))
                .foregroundColor(.black)
                .cornerRadius(15)
                .padding(.horizontal, 32)
                .onChange(of: password) {oldValue, newValue in
                    print("el antiguo valor es \(oldValue) y el nuevo valor es: \(newValue)")
            }
        }
            
    }
}

#Preview {
    TextFillExample()
}
