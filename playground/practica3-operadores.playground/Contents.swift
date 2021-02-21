// Juan Antonio Amador Barajas - MTWDM

import UIKit

let tres = 3
let menostres = -tres
print(menostres)

1 == 2

2 != 1

2 > 1

1 < 2

1 >= 1

2 <= 1

let nombre = "Juan"

if nombre == "Juan"{
    print("hola juan")
}
else{
    print("No es juan")
}

//operador ternario

var edad = 18

var resultado = edad >= 18 ? "Adulto" : "Menor de edad"

//Rango

var rangoNumeros = 1...10
print(rangoNumeros)

//Switch
let calificacion = 3

switch calificacion {
case 8...10:
    print("Alta")
case 6...7:
    print("Media")
default:
    "Mala"
}
