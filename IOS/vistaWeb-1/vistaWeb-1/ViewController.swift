//
//  ViewController.swift
//  vistaWeb-1
//
//  Created by MTWDM on 18/04/21.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var vistaWeb:WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let liga = URL(string: "https://poderjudicial-gto.gob.mx/")!
        vistaWeb.load(URLRequest(url: liga))
        vistaWeb.allowsBackForwardNavigationGestures = true
        
    }

    override func loadView() {
        vistaWeb = WKWebView()
        vistaWeb.navigationDelegate = self
        view = vistaWeb
    }

}

