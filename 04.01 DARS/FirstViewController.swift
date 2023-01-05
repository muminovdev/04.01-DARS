//
//  FirstViewController.swift
//  04.01 DARS
//
//  Created by Mac on 04/01/23.
//

import UIKit

class FirstViewController: UIViewController {
    let category: [Category] = [
        Category(name: "Mevalar", list: [Food(image: "olma", name: "olma"), Food(image: "nok", name: "nok"), Food(image: "apelsin", name: "apelsin"), Food(image: "banan", name: "banan")]),
        Category(name: "Sabzavotlar", list: [Food(image: "Tarvuz", name: "Tarvuz"), Food(image: "qovun", name: "qovun"), Food(image: "bodring", name: "bodring")])
    ]
    let tableview = UITableView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
      title = "Advensed Tableview"
        
        tableview.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableview)
        tableview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableview.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableview.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableview.register(Header.self, forHeaderFooterViewReuseIdentifier: "header")
        tableview.register(SecondTableViewCell.self, forCellReuseIdentifier: "cell2")
    }
    

    
}
extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        print(category.count)
        return category.count
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return category[section].name
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as! Header
        header.label.text = category[section].name
        header.image.image = UIImage(named: "rams 1")
        return header
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        category[section].list.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! SecondTableViewCell
        cell.image.image = UIImage(named: category[indexPath.section].list[indexPath.row].image)
        cell.label.text = category[indexPath.section].list[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(category[indexPath.section].list[indexPath.row].name)
        let vc = SecondViewController()
        vc.name = category[indexPath.section].list[indexPath.row].name
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
