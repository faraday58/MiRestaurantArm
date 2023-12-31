//
//  MyCollectionViewCell.swift
//  MiRestaurantArm
//
//  Created by Armando Rodríguez on 25/08/23.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell{
    
    
    
    
    private let CellStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.layer.borderColor = UIColor(named: "ColorText")?.cgColor
        stackView.layer.borderWidth = 1
        stackView.layer.cornerRadius = 20
        stackView.spacing = 20
        return stackView
        
    }()
    
    private let categorieImageView : UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private let categorieLabel: UILabel = {
       let label = UILabel()
        label.textColor = UIColor(named: "ColorText")
        label.font = .systemFont(ofSize: 22)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        addSubview(CellStackView)
        CellStackView.addArrangedSubview(categorieImageView)
        CellStackView.addArrangedSubview(categorieLabel)
        
        NSLayoutConstraint.activate([
            CellStackView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            CellStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            CellStackView.leadingAnchor.constraint(equalTo: leadingAnchor)
            
        ])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func configure(model: CategoriesModel)
    {
        categorieLabel.text = model.categories
        categorieImageView.image = UIImage(named: "plate")
    }
    
    
    
}
