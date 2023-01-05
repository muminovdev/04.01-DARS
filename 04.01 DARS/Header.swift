//
//  Header.swift
//  04.01 DARS
//
//  Created by Mac on 04/01/23.
//

import UIKit

class Header: UITableViewHeaderFooterView {
   let label = UILabel()
    let image  = UIImageView()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        label.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(label)
        
        label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor, constant: -30).isActive = true
        label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -10 ).isActive = true
        
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30)
        
        image.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(image)
        
        image.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        image.leftAnchor.constraint(equalTo: label.rightAnchor, constant: 10).isActive = true
        image.widthAnchor.constraint(equalToConstant: 50).isActive = true
        image.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
