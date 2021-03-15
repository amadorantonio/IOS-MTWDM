//
//  ViewController.swift
//  conexionesAppAABJ
//
//  Created by MTWDM on 14/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nombreDepartamento: UILabel!
    
    var objetoEmpleado: Empleado?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nombreDepartamento.text = "Depto de Sistemas"
    }

    @IBAction func altaEmpleado(_ sender: UIButton) {
        print("Entró a alta empleado")
        
        objetoEmpleado = Empleado()
        objetoEmpleado?.nombre = "Juan"
        objetoEmpleado?.apellido = "Pérez"
        objetoEmpleado?.numeroEmpleado = 1
        objetoEmpleado?.numeroIMSS = 123
    }
    
    @IBAction func consultarEmpleado(_ sender: UIButton) {
        print("Entró a consultar empleado")
        
        print("\(objetoEmpleado!.nombre)")
        print("\(objetoEmpleado!.mostrarNombreCompleto())")
        print("\(objetoEmpleado!.mostrarNumero())")
    }
    
    
    @IBAction func verImss(_ sender: UIButton) {
        print("Entró a ver IMSS")
        print("\(objetoEmpleado!.numeroIMSS)")
    }
    
    
    @IBAction func bajaEmpleado(_ sender: UIButton) {
        print("Entró a baja empleado")
    }
}

