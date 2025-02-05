//
//  SettingController.swift
//  Side Menu MVC Architecture
//
//  Created by Nguyen Duc Hung on 18/08/2024.
//

import UIKit

class SettingController: UIViewController {
    
    // MARK: Properties
    
    // MARK: Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selector
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: Helper Functions
    
    func configureUI() {
        view.backgroundColor = .systemGray6
        navigationController?.navigationBar.tintColor = .systemPink
        
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(handleDismiss))
    }
}
