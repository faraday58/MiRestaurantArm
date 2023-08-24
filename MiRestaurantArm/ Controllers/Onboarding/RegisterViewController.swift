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
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passTextField: UITextField!
    
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "ColorHeader")
        setUP()

    }
    
 
    
    // MARK: - Configure elements
    
    func setUP()
    {
        logoImageView.image = UIImage(named: "perfil")
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.layer.cornerRadius = logoImageView.bounds.width / 2
        errorLabel.isHidden = true
        passTextField.textContentType = .password
        emailTextField.textContentType = .emailAddress
    }
    
    
    @IBAction func registerAction(_ sender: Any) {
        guard let user = userTextField.text,
              let password = passTextField.text,
                let email =  emailTextField.text
                else
        {return}
        
        if user.isEmpty || password.isEmpty || email.isEmpty {
            errorLabel.isHidden = false
            errorLabel.text = "Field shouldn't empty"
        }else
        {
            errorLabel.isHidden = true
            let newUser = User(name: user, password: password, email: email)
            PresentLoginModule(withUser: newUser)
        }
        
        
    }
    
    func PresentLoginModule(withUser user: User)
    {
        let loginStoryBoard = UIStoryboard(name: "LoginStoryBoard", bundle: .main)
        let loginViewController = loginStoryBoard.instantiateViewController(identifier: "LoginSB") as! LoginViewController
        let loginNavigation = UINavigationController(rootViewController: loginViewController)
        
        loginViewController.user = user
        
        loginNavigation.modalPresentationStyle = .fullScreen
        
        present(loginNavigation, animated: true)
        
        
    }
    
}
