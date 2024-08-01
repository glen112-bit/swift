//
//  ContentView.swift
//  aplicationIOS
//
//  Created by Glen on 14-07-24.
//

import SwiftUI

struct Exercise1: View {
    var body: some View {
        VStack{
            HStack{
                Rectangle()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.orange)
            HStack{
                Circle()
                    .foregroundColor(.green)
                Rectangle()
                Circle()
                    .foregroundColor(.indigo)
                
            }.frame(height: 250)
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.orange)
            HStack{
                Rectangle()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
        .background(.red)
    }
}
#Preview {
    Exercise1()
}
