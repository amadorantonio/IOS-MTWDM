// Juan Antonio Amador Barajas - MTWDM

import UIKit

var cadenas = "Hola" + "Mundo"

let nombreEmpleado: String = "Luke"
let apellidoEmpleado: String = "SkyWalker"

let titulo: String = "Jedi"
var datosEmpleado: String = ""

datosEmpleado = nombreEmpleado + " " + apellidoEmpleado + " " + titulo
print(datosEmpleado)

datosEmpleado = ""

datosEmpleado += nombreEmpleado + " "
datosEmpleado += apellidoEmpleado + " "
datosEmpleado = titulo

print(datosEmpleado)

let articulo: String = """

Esta cadena es
multilinea

"""

print(articulo)

let sonrrisa = "" //Al seleccionar el emoji, no lo inserta maestro, lo intenté varias veces

var strUnicode = "\u{1F496}"
print(strUnicode)

let comida = "\u{1F354}"
let bebida = "\u{2615}"
let postre = "\u{1F382}"


var comanda = comida+bebida+postre
print("Mesa 1: " + comanda	)
