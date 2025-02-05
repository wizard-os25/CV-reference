//
//  HomeController.swift
//  Side Menu MVC Architecture
//
//  Created by Nguyen Duc Hung on 17/08/2024.
//

import UIKit

class HomeController: UIViewController {
    
    // MARK: - Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        configureNavigationBar()
    }
    
    
    
    // MARK: - Handlers
    
    @objc func handlerMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar() {
//        navigationController?.setNavigationBarHidden(false, animated: true)
//        navigationController?.navigationBar.isTranslucent = false

navigationController?.navigationBar.barTintColor = .systemTeal
        navigationController?.navigationBar.barStyle     = .black
        
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "building.columns"), style: .plain, target: self, action: #selector(handlerMenuToggle))
    }
}
