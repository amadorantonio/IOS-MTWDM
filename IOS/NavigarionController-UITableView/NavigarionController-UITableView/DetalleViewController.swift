//
//  DetalleViewController.swift
//  NavigarionController-UITableView
//
//  Created by MTWDM on 17/04/21.
//

import UIKit

class DetalleViewController: UIViewController {
    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var edad: UILabel!
    @IBOutlet weak var foto: UIImageView!
    
    var nombreRecibido:String?
    var edadRecibida:Int?
    var fotoRecibida = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        titulo.text = nombreRecibido!
        edad.text = String(edadRecibida!) + " años"
        foto.image = fotoRecibida
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
