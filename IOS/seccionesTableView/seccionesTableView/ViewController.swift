//
//  ViewController.swift
//  seccionesTableView
//
//  Created by Juan Antonio Amador Barajas MTWDM on 18/04/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var titulosSecciones = [String]()
    var automoviles = [String]()
    var diccionarioAutomoviles = [String: [String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        automoviles = ["Audi", "Aston Martin","BMW", "Bugatti", "Bentley","Chevrolet", "Cadillac","Dodge","Ferrari", "Ford","Honda","Jaguar","Lamborghini","Mercedes", "Mazda","Nissan","Porsche","Rolls Royce","Toyota","Volkswagen"]
        
        for automovil in automoviles {
            let idAuto = String(automovil.prefix(1))
            print(idAuto)
            
            if var carValues = diccionarioAutomoviles[idAuto]{
                carValues.append(automovil)
                diccionarioAutomoviles[idAuto] = carValues
            }
            else{
                diccionarioAutomoviles[idAuto] = [automovil]
            }
            
            titulosSecciones = [String](diccionarioAutomoviles.keys)
            print(titulosSecciones)
            titulosSecciones = titulosSecciones.sorted(by: {$0 < $1})
            print(titulosSecciones)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return datos
        
        //Maestro, tuve que copiar y pegar esta parte de su git, ya que en el video no se muestra la resolución del error de indice fuera de rango
        
        let idAuto = titulosSecciones[section]
                
        if let datosAuto = diccionarioAutomoviles[idAuto] {
            return datosAuto.count
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        let idAuto = titulosSecciones[indexPath.section]
                
        if let datosAuto = diccionarioAutomoviles[idAuto] {
            celda.textLabel?.text = datosAuto[indexPath.row]
        }
    
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return titulosSecciones.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titulosSecciones[section]
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return titulosSecciones
    }
}

