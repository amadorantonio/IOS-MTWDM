//
//  EmpleadosViewController.swift
//  NavigarionController-UITableView
//
//  Created by Juan Antonio Amador MTWDM on 17/04/21.
//

import UIKit

class EmpleadosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var nombresEmpleados = ["Manuel Álvarez", "Erick Zarate", "Norma Falcón"]
    var edadesEmpleados = [21,22,23]
    var fotoEmpleados:[UIImage] = [
        UIImage(named: "foto1.jpg")!,
        UIImage(named: "foto2.jpg")!,
        UIImage(named: "foto3.jpg")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombresEmpleados.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        celda.textLabel?.text = nombresEmpleados[indexPath.row]
        return celda
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "detalleEmpleadoSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalleEmpleadoSegue"{
            let idSeleccionado = sender as! Int
            let detalleEmpleadoVC:DetalleViewController = segue.destination as! DetalleViewController
            detalleEmpleadoVC.nombreRecibido = nombresEmpleados[idSeleccionado]
            detalleEmpleadoVC.edadRecibida = edadesEmpleados[idSeleccionado]
            detalleEmpleadoVC.fotoRecibida = fotoEmpleados[idSeleccionado]
        }
    }
}
