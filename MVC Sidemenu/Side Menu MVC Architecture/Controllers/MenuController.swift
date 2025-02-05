//
//  Menu Controller.swift
//  Side Menu MVC Architecture
//
//  Created by Nguyen Duc Hung on 17/08/2024.
//

import UIKit

private let reuseIdentifier = "MenuOptionCell"

class MenuController: UIViewController {
    
    // MARK: - Properties
    
    var tableView: UITableView!
    var delegate: HomeControllerDelegate?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
    // MARK: - Handlers
    
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate      = self
        tableView.dataSource    = self
        
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.backgroundColor = .systemTeal
        tableView.separatorStyle  = .none
        tableView.rowHeight       = 66
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true

    }
}

extension MenuController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! MenuOptionCell
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLabel.text = menuOption?.description
        cell.iconImageView.image   = menuOption?.image
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegate?.handleMenuToggle(forMenuOption: menuOption)
        
    }
}
