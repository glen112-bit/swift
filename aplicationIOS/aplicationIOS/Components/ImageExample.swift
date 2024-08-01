//
//  ImageExample.swift
//  aplicationIOS
//
//  Created by Glen on 22-07-24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("siberian")
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 160)
        Image(systemName: "figure.walk")
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 20)
    }
}

#Preview {
    ImageExample()
}
