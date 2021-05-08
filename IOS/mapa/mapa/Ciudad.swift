//
//  Ciudad.swift
//  mapa
//
//  Created by MTWDM on 08/05/21.
//

import UIKit
import MapKit

class Ciudad: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    
    var title: String?
    var info: String?
    
    init(title:String, coordinate:CLLocationCoordinate2D, info:String){
        self.coordinate = coordinate
        self.title = title
        self.info = info
    }
    
}
