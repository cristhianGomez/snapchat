//
//  iniciarSesionViewController.swift
//  snapchat2
//
//  Created by Cristhian Gomez on 14/05/18.
//  Copyright © 2018 Cristhian Gomez. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){
            (user, error) in
            print ("Intentando iniciar sesion")
            if error != nil{
                print("Se presentó el siguiente error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

