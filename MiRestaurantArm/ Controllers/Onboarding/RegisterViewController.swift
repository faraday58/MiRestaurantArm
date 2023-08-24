//
//  RegisterViewController.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 22/08/23.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var retPasswordTextField: UITextField!
    
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUP()

    }
    
 
    
    // MARK: - Configure elements
    
    func setUP()
    {
        logoImageView.image = UIImage(named: "perfil")
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.layer.cornerRadius = logoImageView.bounds.width / 2
        errorLabel.isHidden = false
        errorLabel.text = "chale"
        
    }
    
    
    @IBAction func registerAction(_ sender: Any) {
        let user = userTextField.text
        let password = passwordTextField.text
        let retPassword =  retPasswordTextField.text
        
        if password != retPassword {
            errorLabel.isHidden = false
            errorLabel.text = "Password don't match"
        }else
        {
            errorLabel.isHidden = true
        }
        
        
    }
    
}
