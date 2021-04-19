//
//  MostrarPDFViewController.swift
//  visorPDF
//
//  Created by MTWDM on 18/04/21.
//

import UIKit
import WebKit

class MostrarPDFViewController: UIViewController, WKNavigationDelegate {
    
    var tituloPDF:String?
    var nombrePDF:String?
    var vistaWeb:WKWebView!
    
    override func loadView() {
        vistaWeb = WKWebView()
        vistaWeb.navigationDelegate = self
        view = vistaWeb
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        vistaWeb.allowsBackForwardNavigationGestures = true
        visualizarPDF()
    }
    
    func visualizarPDF(){
        let direccionPDF = URL(fileURLWithPath: Bundle.main.path(forResource: nombrePDF!, ofType: "pdf", inDirectory: "libros")!)
        
        let datosPDF = try? Data(contentsOf: direccionPDF)
        
        vistaWeb.load(datosPDF!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: direccionPDF)
    }
}
