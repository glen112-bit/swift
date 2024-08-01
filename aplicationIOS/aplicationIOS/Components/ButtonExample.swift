//
//  ButtonExample.swift
//  aplicationIOS
//
//  Created by Glen on 27-07-24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("Hola") {
            print("hola que tal")
        }
        Button(action: {
           print("segundo")
        }, label: {
            Text("Button2")
                .frame(width: 100, height: 40)
                .foregroundColor(.white)
                .background(.green)
                .cornerRadius(10)
        })
    }
}
struct Counter:View {
    @State var SuscriptNumber = 0
    var body: some View {
        Button(action: {
        SuscriptNumber += 1
        },
               label:{
            Text("Suscriptores: \(SuscriptNumber)")
                .frame(height: 60)
                .bold()
                .font(.title)
                .padding(6)
                .foregroundColor(.white)
                .background(.red)
                .cornerRadius(6)
        })
    }
}

#Preview {
    Counter()
}
