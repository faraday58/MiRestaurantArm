//
//  RegisterViewController.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 22/08/23.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var logoImageView: UIImageView!
    
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
        
        
    }

}
