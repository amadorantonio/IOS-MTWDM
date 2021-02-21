// Juan Antonio Amador Barajas - MTWDM

import UIKit

var cadena:String = "this is the way"
var otraCadena: String = ""
var nombre:String

print(cadena)
print(otraCadena)

var nombreOpcional:String?

nombreOpcional = "Sow un opcional"

print("\(nombreOpcional!)") //unwrap

var miEntero: Int?

miEntero = 50

print(miEntero!)

let diametro: Optional<Int> = 45
print(diametro!)


var regalosNavidad: Int?
regalosNavidad = 10
if regalosNavidad != nil {
    var cantidadRegalos = regalosNavidad!
    print("Llegaron \(cantidadRegalos) regalos de Navidad - Happy")
}
else {
    print("No llegaron regalos de navidad - Sad")
}

var regalosNavidad20201: Int?

regalosNavidad20201 = 5

//Optional Binding
if let cantidadRegalos2021 = regalosNavidad20201 {
    print("Llegaron \(cantidadRegalos2021) regalos de Navidad - Happy")
}
else{
    print("No llegaron regalos de Navidad - Sad")
}


//Tipo: Character

var sigoExclamcion: Character = "G"
sigoExclamcion = "!"
print(sigoExclamcion)

let grupos: [Character] = ["h", "o", "l", "a"]

let gruposCadena = String(grupos)
print(gruposCadena)
print(grupos[0])
