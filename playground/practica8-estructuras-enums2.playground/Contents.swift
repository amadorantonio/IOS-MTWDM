//By Antonio Amador Barajas

import UIKit

let cadenasComillas = "Bienvenido a esta materia de \"Desarrollo en IOS\" 2021"
print(cadenasComillas)

let cadenaSAlto = "Bienvenido, \n a IOS"
print(cadenaSAlto)

func saluda(_ name:String){
   print(name)
}

saluda("Messi")


//Arreglos

var titulosStarWars = [String]()

titulosStarWars.append("una nueva esperanza")
print(titulosStarWars)

titulosStarWars.insert("el imperio contra ataca", at: 1)


titulosStarWars += ["3", "4"]
print(titulosStarWars)

titulosStarWars.remove(at: 3)
print(titulosStarWars)

titulosStarWars.removeFirst()
print(titulosStarWars)

titulosStarWars.removeLast()
print(titulosStarWars)

titulosStarWars.removeAll()
print(titulosStarWars)

struct Canciones {
    let titulo: String
    let artista: String
    let duracion: Int
    
    var duracionMinutos: String {
        let minutos = duracion / 60
        let segundos = duracion % 60
        return "\(minutos) minutos, \(segundos) segundos"
    }
}

let cancion = Canciones(titulo: "El noa noa", artista: "Juan gabriel", duracion: 150)

print(cancion)
print(cancion.artista)
print(cancion.duracionMinutos)

let cancion2 = Canciones(titulo: "El triste", artista: "jose jose", duracion: 180)

enum desayuno{
    case huevos
    case chilaquiles
    case quesadillas
    func postre(_ desicion:Bool) -> String {
        if(desicion){
            return "Si"
        }
        else {
            return "No"
        }
    }
}

print(desayuno.huevos)

let eleccion = desayuno.huevos
print(eleccion)

print(eleccion.postre(true))
