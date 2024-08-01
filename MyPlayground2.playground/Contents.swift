import UIKit

var greeting = "Hello, playground"

func showNme(name:String){
    print("Hola mi nombre es: \(name)")
}
showNme(name:"Glen")

func calculate(a: Int, b: Int){
    let result = a + b
    print("el resultado es: \(result)")
}
calculate(a: 10, b: 5)

func calculate2(_ a: Int, _ b: Int){
    let result = a + b
    print("el resultado es: \(result)")
}
calculate2(10, 20)

func calculate3(a: Int, b: Int) -> Int{
    let result = a + b
    return result
}
let mySuperResoult:Int = calculate3(a: 6, b: 4)
print(mySuperResoult)

let userAge = 19

if userAge >= 18 {
    print("eres mayor de edad")
}else {
    print("eres menor de edad")
}

func greeting(hour: Int){
    if hour <= 4 {
       print("buenas noches")
    }
    if hour < 12 && hour >= 5 {
        print("bom dia")
    }else if hour >= 12 && hour < 18 {
        print("boa tarde")
    }else if hour > 18 {
        print("boa noite")
    }
}
greeting(hour: 8)

func getMonth(_ month: Int){
    switch month{
    case 1: print("enero")
    case 2: print("febrero")
    case 3: print("marzo")
    case 4: print("abril")
    case 5: print("mayo")
    case 6: print("junio")
    case 7: print("julio")
    case 8: print("agosto")
    case 9: print("septiembre")
    case 10: print("octubre")
    case 11: print("noviembre")
    case 12: print("diciebmre")
    default: print("introcuce un mes valido")
    }
}
getMonth(5)
func getTrimestre(_ month: Int){
    switch month{
    case 1,2,3: print("Primer Trimestre")
    case 4,5,6: print("Segundo Trimestre")
    case 7,8,9: print("Tercer Trimestre")
    case 10,11,12: print("Cuarto Trimestre")
    default: print("selecciona un mes valido")
    }
}
getTrimestre(6)
func getSemestre(_ month: Int){
    switch month{
    case 1...6: print("Primer Semestre")
    case 7...12: print("segundo Semestre")
    default: print("selecciona un mes valido")
    }
}
getSemestre(9)
var r: Double = 10;
func circArea(_ r: Double) -> Double {
    let area = Double.pi * (r * r)
    return area
}
let resultado = circArea(r)
print("el area de \(r) es \(resultado)")

func posNeg(_ n: Int){
    if n > 0 {
        print("\(n) es un numero positivo")
    }
    if n == 0 {
        print("\(n) es igual a 0")
    }
    else {
        print("\(n) es un numero negativo")
    }
}
posNeg(0)

func posNegSwitch(_ n:Int) {
    switch n{
    //case n < 0: print("negativo")
    case let x where x < 0: print("negativo")
    //case n > 0: print("positivo")
    case let x where x > 0: print("positivo")
    default: print("es cero")
    }
}
posNegSwitch(0)

//Arrays
let names:[String] = ["lalo", "lelo", "fulano", "bisteka"]
let daysOfTheWeek:[String] = ["lunes", "martes", "miercoles", "jueves", "sabado", "domingo"]

//Bucles

for i in daysOfTheWeek{
    print("dia: \(i)")
}
var count = 0
while count < 10 {
    print("hola, soy un contador, y valgo: \(count)")
    count += 1
}
var count2 = 5
//repeat{
//    print("pepe")
//}while count2 > 5{
//    print("lelo")
//}

func multiplic(_ n: Int){
    for i in 1...10 {
        print("\(n) * \(i) = \(n*i)")
    }
}
multiplic(6)

func sumaPares(){
    var total = 0
    for i in 1...100{
        if i % 2 == 0{
            total += i
        }
    }
    print(total)
}

sumaPares()

func getVocals(_ palabra: String){
    var totalVocals: Int = 0
    for caracter in palabra{
        switch caracter.lowercased(){
        case "a", "e", "i", "o", "u": totalVocals += 1
        default: continue
        }
    }
    print("el total de vocalespara \(palabra) es de \(totalVocals)")
}
getVocals("patricio")

//Tuplas
var tuplas = ("Glen", 37, true, "mi casa", 1.73)

tuplas.self

//Diccionarios

var dic:[String: Any] = ["name": "Glen", "age": 37, "address": "mi casa"]
var myDicName = dic["name"] as? String ?? "name"
print(myDicName)

for (key, value) in dic{
    print("la clave \(key) contiene \(value)")
}

//clases
class Persona {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    func greetings(){
        print("Hola que tal, soy \(name), y tengo \(age) años")
    }
}
var Glen:Persona = Persona(name: "Glen", age: 37)
Glen.greetings()
