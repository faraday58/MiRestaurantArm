//
//  ConfigureViewController.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 22/08/23.
//

import UIKit
import WebKit
class ConfigureViewController: UIViewController {

    @IBOutlet weak var webConfigureFood: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(named: "ColorHeader")

        
        webConfigureFood.load(URLRequest(url: URL(string: "https://www.packstyle.com/markets/food")!))
        // Do any additional setup after loading the view.
    }
    

   

}
