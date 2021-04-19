//
//  ViewController.swift
//  visorPDF
//
//  Created by MTWDM on 18/04/21.
//

import UIKit



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var listaTitulo = ["Clean code", "Javascript", "Material regular expressions", "Título 4", "Título 5", "Título 6", "Título 7", "Título 8", "Título 9", "Título 10"]
    var listArchivos = ["pdf1", "pdf2", "pdf3", "pdf1", "pdf2", "pdf3", "pdf1", "pdf2", "pdf3", "pdf1"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArchivos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = UITableViewCell()
        celda.textLabel?.text = listaTitulo[indexPath.row]
        celda.imageView!.image = UIImage(named: "iconopdf")
        return celda
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let refreshAlert = UIAlertController(title: "¿Estas seguro?", message: "Se eliminará" + listaTitulo[indexPath.row], preferredStyle: .alert)
            
            refreshAlert.addAction(UIAlertAction(title: "Si, eliminar", style: .default, handler: {
                (action: UIAlertAction!) in
                print(indexPath.row)
                self.listArchivos.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .middle)
            }))
            
            refreshAlert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: {
                (action: UIAlertAction!) in
                print("Se canceló la eliminación")
            }))
            
            present(refreshAlert, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "Eliminar"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "mostrarPDFsegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "mostrarPDFsegue"){
            let idPDF = sender as! Int
            let mostrarPDFVC: MostrarPDFViewController = segue.destination as! MostrarPDFViewController
            mostrarPDFVC.tituloPDF = listaTitulo[idPDF]
            mostrarPDFVC.nombrePDF = listArchivos[idPDF]
        }
    }
    
}

