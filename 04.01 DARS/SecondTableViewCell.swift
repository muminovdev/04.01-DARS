//
//  SecondTableViewCell.swift
//  04.01 DARS
//
//  Created by Mac on 05/01/23.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    let image = UIImageView()
    let label = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
//        label.rightAnchor.constraint(equalTo: image.leftAnchor, constant: 20).isActive = true
//        label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        
        
        
        image.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(image)
        
        image.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
//        image.leftAnchor.constraint(equalTo: label.rightAnchor, constant: 100).isActive = true
        image.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
        image.heightAnchor.constraint(equalToConstant: 50).isActive = true
        image.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
