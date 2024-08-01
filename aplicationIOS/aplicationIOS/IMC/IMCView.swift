//
//  IMCView.swift
//  aplicationIOS
//
//  Created by Glen on 28-07-24.
//

import SwiftUI

struct IMCView: View {
    @State var gender:Int = 0
    @State var age:Int = 18
    @State var weight:Int = 45
    @State var height:Double = 150
    
    var body: some View {
        VStack{
            HStack{
                ToggleButton(text: "Man", imageName: "heart.fill", gender: 0, selectedGender: $gender)
                ToggleButton(text: "Woman", imageName: "star.fill", gender: 1, selectedGender: $gender)
            }
            heigthCalculator(selectedHeight: $height)
            HStack{
                counterButtons(text:"Edad", number: $age)
                counterButtons(text:"Peso", number: $weight )
            }
            IMCCalculateButton( userHeight: height, userWeight: Double(weight))
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.backgroundApp)
            
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("IMC Calculator").bold().foregroundColor(.white)

              }
         }
    }
}

struct IMCCalculateButton:View {
    let userHeight:Double
    let userWeight:Double
    
    var body: some View {
        NavigationStack{
            NavigationLink(destination: {
                IMCResult(userWeight: userWeight, userHeight: userHeight)
            }){
                Text("Calcular").font(.title).bold()
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .foregroundColor(.purple)
                    .scaledToFit()
                    .background(.backgroundComponent)
                    
            }
        }
    }
}

struct ToggleButton:View {
    let text:String
    let imageName:String
    let gender:Int
    
    @Binding var selectedGender:Int
    
    var body: some View {
        let color = if(gender == selectedGender ){
            Color.backgoundSelectedComponent
        }else{
            Color.backgroundComponent
        }
        Button(action: {
            selectedGender = gender
        }) {
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.white)
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                informationText(text: text)
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(color)
        }
    }
}
struct informationText:View {
    let text:String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundColor(.white)
    }
}

struct titleText:View {
    let text:String
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundColor(.gray)
    }
}
struct heigthCalculator:View {
    @Binding var selectedHeight:Double
    var body: some View {
        VStack{
            titleText(text: "Altura")
            informationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in: 100...220, step: 1)
                .accentColor(.purple)
                .padding(.horizontal, 6)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundComponent)
    }
}

struct counterButtons:View {
     
    let text:String
    @Binding var number:Int

    
    var body: some View {
            VStack{
                titleText(text: text)
                informationText(text: String(number))
                HStack{
                   
                    Button(action:{
                        if(number > 1){
                            number -= 1
                        }else{
                            return
                        }
                        
                    }){
                        ZStack{
                            Circle()
                                .frame(width: 70, height: 70)
                                .foregroundColor(.purple)
                            Image(systemName: "minus")
                                .resizable()
                                .foregroundColor(.white)
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        }
                    }
                    Button(action:{
                        if(number < 100){
                            number += 1
                        }else{
                            return
                        }
                    }){
                        ZStack{
                            Circle()
                                .frame(width: 70, height: 70)
                                .foregroundColor(.purple)
                            Image(systemName: "plus")
                                .resizable()
                                .foregroundColor(.white)
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                            
                      }
                 }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundComponent)
    }
}

#Preview {
  //  ToggleButton(text: "Button", imageName: "heart.fill", index: 0)
   IMCView()
}
//.navigationBarBackButtonHidden()
