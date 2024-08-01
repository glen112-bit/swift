//
//  LabelExample.swift
//  aplicationIOS
//
//  Created by Glen on 22-07-24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("swift", image: "figure.walk")
        Label("swift", systemImage: "figure.badminton")
        Label(
            title: { /*@START_MENU_TOKEN@*/Text("Label")/*@END_MENU_TOKEN@*/ },
            icon: { Image("siberian").resizable().scaledToFit().frame(height: 96) }
        )
    }
} 

#Preview {
    LabelExample()
}
