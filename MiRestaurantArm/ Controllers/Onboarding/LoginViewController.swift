//
//  LoginViewController.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 22/08/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    
    
    
    var user = User(name: "", password: "", email: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUP()

    }
    
    func setUP()
    {
        userLabel.text = user.name
        emailLabel.text = user.email
    }
    

    @IBAction func LoginDismissAction(_ sender: Any) {
        dismiss(animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
