//Práctica 10 Juan Antonio Amador Barajas

import UIKit

var texto = "Hello, playground"

func suma(a: Int, b: Int) -> Int {
    return a + b
}

let resultado = suma(a: 42, b: 99)
print(resultado)

func suma2(a: Double, b: Double) -> Double {
    return a + b
}

let resultado2 = suma2(a: 43.4, b: 54.3)
print(resultado)

func sumaGenericas<T: Numeric> (a: T, b: T) -> T {
    return a + b
}

print(sumaGenericas(a: 45, b: 4))
print(sumaGenericas(a: 30.2, b: 10.4))
print(sumaGenericas(a: Double.pi, b: Double.pi))


//Equitable
let arregloNombres = ["Hugo", "Paco", "Luis"]



func obtienePosicion <T:Equatable>(abuscar: T, nombres: [T]) -> Int? {
    for(index, nombre) in nombres.enumerated(){
        if nombre == abuscar {
            return index
        }
    }
    return nil
}

let encontrado = obtienePosicion(abuscar: "Luis", nombres: arregloNombres)

if encontrado != nil {
    print("Se encontró en la posición: ")
    print(encontrado!)
}
else{
    print("No encontrado")
}


//Extensión de estructuras

struct Point{
    let x:Int, y:Int
}

let p = Point(x: 21, y: 30)
print(p)

extension Point {
    var descripcion:String{
        return "\(x), \(y)"
    }
}

var nueva = p.descripcion
print(nueva)

class Perro{
    var raza: String = ""
    func hacerRuido() {
        print("Woof!")
    }
}

class Cachorro: Perro{
    override func hacerRuido() {
        print("Yiip!")
    }
}

let mascota: Cachorro = Cachorro()
mascota.raza = "Pastor Alemán"
mascota.hacerRuido()

//final

//final class Paciente{
class Paciente{
    var nombre:String
    var padecimiento:String
    
    init(nombre:String, padecimiento:String) {
        self.nombre = nombre
        self.padecimiento = padecimiento
    }
}

let objetoPaciente = Paciente(nombre: "Toño Amador", padecimiento: "Hipertensión")
print(objetoPaciente.nombre)

class EnfermoGrave: Paciente{
    var nivelDolor: Int
    init(nombre:String, padecimiento:String, nivelDolor:Int){
        self.nivelDolor = nivelDolor
        super.init(nombre: nombre, padecimiento: padecimiento)
        
    }
}

let objetoEnfermo:EnfermoGrave = EnfermoGrave(nombre: "Victoria Amador", padecimiento: "Diabetes", nivelDolor: 3)

print("\(objetoEnfermo.nombre) \(objetoEnfermo.nivelDolor)")


class Cantante{
    var nombre = "Carlos Rivera"
}

var objetoCantante:Cantante = Cantante()

print(objetoCantante.nombre)

var objetoCantante2 = objetoCantante

print(objetoCantante2.nombre)

objetoCantante2.nombre = "Christian Nodal"
print(objetoCantante2.nombre)
