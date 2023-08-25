//
//  OrderViewController.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 22/08/23.
//

import UIKit
import MapKit

class OrderViewController: UIViewController {
    private let sucursales = ["Plaza Chimalhuacan", "Puerta Texcoco",
    "Los Reyes", "Costitlán", "Chicoloapan", "Los Héroes","Piedras Negras"
    ]
    
    
   
    
    
    @IBOutlet weak var myMapView: MKMapView!
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myMapView.centerCoordinate = CLLocationCoordinate2D(latitude: 19.41101409284514, longitude: -98.92826080967326
        )
        view.backgroundColor = UIColor(named: "ColorHeader")
        setUpTableview()
        
        

        // Do any additional setup after loading the view.
    }
    
    private func setUpTableview(){
        myTableView.dataSource = self
       // myTableView.tableFooterView = UIView()
        myTableView.register(UINib(nibName: "MyCustomCell", bundle: nil), forCellReuseIdentifier: "myCustomCell")
        
        
    }
    
}


extension OrderViewController: UITableViewDataSource {
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sucursales.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat { //modificar el tamaño de cada tabla
       
        return 150
        //return UITableView.automaticDimension //CELDA DE TAMAÑO DINAMICO
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      /*
        var cell = myTableView.dequeueReusableCell(withIdentifier: "myCell")
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell"  )
            cell?.backgroundColor = .brown
            cell?.accessoryType = .checkmark
            
        }
        */
        let cell = myTableView.dequeueReusableCell(withIdentifier: "myCustomCell", for: indexPath) as? MyCustomCell
        
        cell?.sucursalLabel.text = sucursales[indexPath.row]
        cell?.distanceLabel.text = String(indexPath.row + 1) + " km"
        return cell!
        
    }
    
    
}
