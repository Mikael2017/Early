// RegistrationViewController.swift
//  Created by annotations on 12/20/18.
//  Copyright © Mikael. All rights reserved.
import UIKit
import Firebase

class RegistrationViewController: UIViewController {
@IBOutlet weak var RegisEmail: UITextField!
@IBOutlet weak var RegisPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: RegisEmail.text!, password: RegisPassword.text!) { (user, error) in
            if error != nil {
               /*let alert = UIAlertController(title: "Hi", message: "ffsfs", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)  */
                print(error!)
            }
            else {
                print("Registeration succesfull")
                //self.performSegue(withIdentifier: toLanding1, sender: self)
            }
        }
    }
    
    /*
     Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
     if error != nil  {
     
     //Implementing addtional items
     
     let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
     let action = UIAlertAction(title: "OK", style: .default, handler: nil)
     alert.addAction(action)
     self.present(alert, animated: true, completion: nil)
     
     }
     else     {
     print("Registeration sucussfull")
     self.performSegue(withIdentifier: "goToChat", sender: self)
     }
     }
    */

}
