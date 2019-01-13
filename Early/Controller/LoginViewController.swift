import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfiled: UITextField!
    @IBOutlet weak var passwordTextfiled: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
@IBAction func LoginPressed(_ sender: UIButton) {
    Auth.auth().signIn(withEmail: emailTextfiled.text!, password : passwordTextfiled.text!) { (user, error) in
            if error != nil {
                print(error!)
            }
            else {
                print("Log in successful!")
                self.performSegue(withIdentifier: "toLanding2", sender: self)
            }
        }
    }
    
}



