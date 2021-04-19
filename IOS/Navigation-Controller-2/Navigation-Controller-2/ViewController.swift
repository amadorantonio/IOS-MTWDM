//
//  ViewController.swift
//  Navigation-Controller-2
//
//  Created by Juan Antonio Amador Barajas MTWDM on 17/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    let boton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        
        boton.setTitle("Ir a Segundo VC", for: .normal)
        boton.backgroundColor = .white
        boton.setTitleColor(.blue, for: .normal)
        boton.frame = CGRect(x:50, y:50, width:200, height:50)
        boton.addTarget(self, action: #selector(tapSegundoVC), for: .touchUpInside)
        
        view.addSubview(boton)
    }

    @objc private func tapSegundoVC(){
        let segundoVC = SegundoViewController()
        let navVC = UINavigationController(rootViewController: segundoVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }

}

class SegundoViewController:UIViewController{
    let boton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Segundo VC"
        view.backgroundColor = .red
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Regresar", style: .plain, target: self, action: #selector(regresarPrimerVC))
        
    }
    
    @objc private func regresarPrimerVC(){
        dismiss(animated: true, completion: nil)
    }
}
