//
//  ViewController.swift
//  proyecto2A1
//
//  Created by Isaac Hernandez Loredo, Alejandro Barron Solis. Grupo 03. Version final del proyecto 2.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta2: UILabel!
    
    @IBOutlet weak var user: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    var texto = String ()
    var pass = String ()
    var data = [datos] ()
    
    @IBAction func Ingresar(_ sender: UIButton) {
        
        var bloqueo = false
        for i in 0...data.count - 1 {
            
        
            if data[i].nombre == user.text {
                
               if data[i].pw == password.text {
                
                bloqueo = true
                
                }
              
            } else{
                
            etiqueta2.text = "No te has registrado compa"
                
            }
        }
        if bloqueo {
            self.performSegue(withIdentifier: "vista3", sender: self)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
         user.text = texto
         password.text = pass
         data.append(datos(nombre: texto, pw: pass))
        
    }
   
}
   



