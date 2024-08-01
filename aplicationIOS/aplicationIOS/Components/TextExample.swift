//
//  TextExample.swift
//  aplicationIOS
//
//  Created by Glen on 22-07-24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.headline)
            Text("custom")
                .font(.system(size: 40, weight: .light, design: .monospaced))
                .italic()
                .bold()
                .underline()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .background(.red)
            Text("Glen Glen Glen Glen Glen Glen")
                .frame(width: 150)
                .lineLimit(3)
                .lineSpacing(125)
        }
       
    }
}

#Preview {
    TextExample()
}
