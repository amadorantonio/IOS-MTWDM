//Juan Antonio Amador Barajas - MTWyDM

import UIKit

func miFuncion(nombre:String) -> String {
    return "Hola " + nombre
}

miFuncion(nombre: "Biden")

print(miFuncion(nombre: "Obama"))

func saludo(nombre:String) {
    print("Hola " + nombre)
}

saludo(nombre: "Trump")

func otroSaludo(nombre:String, enElPoder:Bool) -> String {
    if enElPoder {
        return "Si"
    }
    else {
        return "No"
    }
}

print(otroSaludo(nombre: "AMLO", enElPoder: true))

func cuenta(apellido: String) -> Int {
    print(apellido)
    return apellido.count
}

print(cuenta(apellido: "Hermández"))

func compara(arreglo:[Int]) -> (menor: Int, mayor: Int) {
    if arreglo[0] > arreglo[1]{
        return (arreglo[1], arreglo[0])
    }
    else{
        return (arreglo[0], arreglo[1])
    }
}

print(compara(arreglo: [5, 8]))

var mivariable = compara(arreglo: [15, 10])

print(mivariable.mayor)
print(mivariable.menor)

//Tuplas
//Latitud, Longitud

var serie = (temporada: 1, nombre: "Stranger Things")
print(serie.nombre + ", Temporada \(serie.temporada)")

func otroSaludoMas(nombre:String, ciudad:String) -> String {
    return "Hola \(nombre) gracias por visitarnos de la ciudad de \(ciudad)"
}

print(otroSaludoMas(nombre: "Juan", ciudad: "Sombrerete"))


func otroSaludoMas2(_ nombre:String, ciudad:String) -> String {
    return "Hola \(nombre) gracias por visitarnos de la ciudad de \(ciudad)"
}

print(otroSaludoMas2("Juan", ciudad: "Sombrerete"))
