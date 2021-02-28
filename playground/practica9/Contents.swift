//Práctica 9 Antonio Amador

import UIKit

// variables globales

var variableGlobal: Int = 50

func evaluar(){
    var variablLocal: String
    variablLocal = "Este es un texto de ejemplo"
    print("Global: \(variableGlobal), Local: \(variablLocal)")
}

evaluar()

class Heroe {
    var nombre: String = ""
    var edad: Int = 0
    var tipo = SuperPoder()
    
    func saludar() -> String {
        return "Soy un super here mi nombre es \(nombre)"
    }

    func muestraPoder() -> String {
        return "Soy \(nombre) y yo puedo \(tipo.accion)"
    }
}

class SuperPoder {
    var accion:String = ""
    
}

var objetoHeroe: Heroe = Heroe()

objetoHeroe.nombre = "Thor"

print(objetoHeroe.nombre)

var cadena = objetoHeroe.saludar()

print(cadena)

objetoHeroe.tipo.accion = "Volar"

print(objetoHeroe.muestraPoder())


class Persona {
    var nombre:String = ""
    var apellido:String = ""
    var curp:String = ""
    
    func muestraCurp() -> String{
        return "Curp: \(curp)"
    }
}

var objetoPersona:Persona = Persona()

objetoPersona.nombre = "Juan"
objetoPersona.apellido = "Pérez"
objetoPersona.curp = "aabj900510"

print(objetoPersona.muestraCurp())

class Empleado:Persona {
    var numeroEmpleado:Int
    var puesto:String
    
    init(numeroEmpleado:Int, puesto:String) {
        self.numeroEmpleado = numeroEmpleado
        self.puesto = puesto
    }
    
    func datosEmpleado() -> String {
        var datos:String
        datos = "Numero de empleado: " + String(numeroEmpleado) + "\n"
        datos += "Nombre completo: " + nombre + " " + apellido + "\n"
        datos += "Puesto: " + puesto
        return datos
    }
}

var objetoEmpleado:Empleado = Empleado(numeroEmpleado: 1, puesto: "Director General")

objetoEmpleado.nombre = "Hugo"
objetoEmpleado.apellido = "Sánchez"
objetoEmpleado.curp = "12345"

print(objetoEmpleado.datosEmpleado())


//Guard

let esMujer:Bool = false

func revisaGenero(){
    guard esMujer else {
        print("Genero: Hombre")
        return
    }
}

revisaGenero()
