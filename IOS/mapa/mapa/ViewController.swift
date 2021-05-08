//
//  ViewController.swift
//  mapa
//
//  Created by Juan Antonio Amador Barajas on 08/05/21.
//

import UIKit

import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sombrerete = Ciudad(title: "Sombrerete", coordinate: CLLocationCoordinate2DMake(23.6294273, -103.6660503), info: "Sombrerete Pueblo Mágico")
        let londres = Ciudad(title: "Londres", coordinate: CLLocationCoordinate2DMake(51.507222, -0.1275), info: "Capital de Inglaterra")
        let guanajuato = Ciudad(title: "Guanajuato Cital", coordinate: CLLocationCoordinate2DMake(21.0160725, -101.2563246), info: "Capital del Estado de Guanajuato")
        
        mapa.addAnnotations([londres, sombrerete, guanajuato])
    }


}

