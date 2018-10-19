//
//  ViewController.swift
//  proyecto2A1
//
//  Created by Isaac Hernández Loredo y Alejandro Barrón Solis
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data = [datos] ()
    

    @IBOutlet weak var user: UITextField!
    
    var texto = String ()
    var pass = String ()
    
    
    
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func Ingresar(_ sender: UIButton) {
        
        
 //       if  data.append(datos(nombre: texto, pw: pass)) == data.append(datos(nombre: "", pw: "" )){
            
 //           print("No has puesto usuario ni contraseña")
 //       }
        
        

        for i in 0...data.count - 1 {
            
            //var bloqueo = false
        
            if data[i].nombre == user.text {
                
               if data[i].pw == password.text {
                
                //bloqueo = false
                   print (" ")
                
                performSegue(withIdentifier: "vista 3", sender: Any?.self)
                
                }
                  
                else {
            
              // bloqueo = true
                }
              
            } else {
                print ("Usuario no registrado")
            }
        
        }
     
    }
    
    //if bloqueo == true {
    //print ("")
    
    //}
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
         user.text = texto
         password.text = pass
        
       
       data.append(datos(nombre: texto, pw: pass))
        
      
      
    }

   
}
   



