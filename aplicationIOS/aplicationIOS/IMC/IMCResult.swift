//
//  IMCResult.swift
//  aplicationIOS
//
//  Created by Glen on 01-08-24.
//

import SwiftUI

struct IMCResult: View {
    
    let userWeight:Double
    let userHeight:Double
    
    var body: some View {
        VStack{
            Text("Tu Resultado").foregroundColor(.white)
            let result = calcularImc(weight: userWeight, height: userHeight)
            InformationView(result: result)
                .font(.title)
                .bold()
                .foregroundColor(.white)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundApp)
    }
}

func calcularImc(weight:Double, height:Double) -> Double{
    let result = weight / (( height / 100 )*(height / 100))
    return result
    
}

struct InformationView:View {
    let result:Double
    var body: some View {
        
        let information = getIMCRersult(result: result)
        VStack{
            Spacer()
            Text(information.0).foregroundColor(information.2)
                .font(.title)
                .bold()
            Spacer()
            Text("\(result, specifier: "%.2f")").font(.system(size: 62)).bold()
            Spacer()
            Text(information.1).foregroundColor(.gray).font(.title2).padding(.horizontal, 8)
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(.backgroundComponent).cornerRadius(16).padding(16)
    }
    
}
func getIMCRersult(result:Double ) -> (String, String, Color ){
    var title:String
    var description:String
    var color:Color
    
    switch result{
    case 0.00...19.99:
        title = "Peso Bajo"
        description = "Estas por debajo del peso recomendado segun IMC "
        color = Color.green
    case 20.00...24.99:
        title = "Peso Normal"
        description = "Estas en un peso normal segun IMC "
        color = Color.yellow
    case 25.00...29.99:
        title = "sobre peso"
        description = "Estas con sonbrepeso segun IMC "
        color = Color.orange
    case 30.00...100:
        title = "Obeso"
        description = "Estas obeso segun el IMC "
        color = Color.red
    default:
        title = "Error"
        description = "Ha ocurrido un Error"
        color = Color.gray
    }
    return (title, description, color)
}
#Preview {
    IMCResult(userWeight: 80, userHeight: 170)
}
