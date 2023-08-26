//
//  ViewController.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 21/08/23.
//

import UIKit

let categories = [
    Categories(title: "appetizer", imageName: "cup.and.saucer"),
    Categories(title: "salads", imageName: "cup.and.saucer.fill"),
    Categories(title: "soups", imageName: "cup.and.saucer"),
    Categories(title: "entrees", imageName: "fork.knife.circle"),
    Categories(title: "desserts", imageName: "fork.knife"),
    Categories(title: "sandwiches", imageName: "fork.knife.circle.fill"),
    
]


class HomeViewController: UIViewController {
    
    
    
    private let CategoriesCollectionView: UICollectionView = {
       let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width: 300, height: 80)
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        return collectionView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor(named: "ColorHeader")
        let uiImage = UIImage(systemName: "person.fill")
        
        self.navigationController?.title = "Home"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: uiImage, style: .plain, target: self, action: #selector(didTapButton))
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "ColorText")
        
        ConfigureCollection()

    }
    
    
    func ConfigureCollection()
    {
        CategoriesCollectionView.dataSource = self
        CategoriesCollectionView.backgroundColor = UIColor(named: "ColorHeader")
        CategoriesCollectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: "MyCollectionViewCell")
        view.addSubview(CategoriesCollectionView)
        
        NSLayoutConstraint.activate([
            CategoriesCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            CategoriesCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            CategoriesCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            CategoriesCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        
    }

    @objc private func didTapButton()
    {
        let registerStoryBoard = UIStoryboard(name: "RegisterStoryBoard", bundle: .main)
        let registerViewControler = registerStoryBoard.instantiateViewController(withIdentifier: "rgisterSB") as! RegisterViewController
        self.navigationController?.pushViewController(registerViewControler, animated: true)
    }

}

extension HomeViewController : UICollectionViewDataSource {
   
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        let model = categories[indexPath.row]
        
        cell.configure(model: model)
        return cell
    }
    
    
    
}

