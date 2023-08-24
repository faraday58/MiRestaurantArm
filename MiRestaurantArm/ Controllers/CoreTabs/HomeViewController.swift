//
//  ViewController.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 21/08/23.
//

import UIKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named: "ColorHeader")
        let uiImage = UIImage(systemName: "person.fill")
        
        self.navigationController?.title = "Home"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: uiImage, style: .plain, target: self, action: #selector(didTapButton))
    }

    @objc private func didTapButton()
    {
        let registerStoryBoard = UIStoryboard(name: "RegisterStoryBoard", bundle: .main)
        let registerViewControler = registerStoryBoard.instantiateViewController(withIdentifier: "rgisterSB") as! RegisterViewController
        self.navigationController?.pushViewController(registerViewControler, animated: true)
    }

}

