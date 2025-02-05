//
//  ViewController.swift
//  Standard Form TableView
//
//  Created by Nguyen Duc Hung on 15/08/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = ContentTBVViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        loadData()
    }
    
    private func configure() {
        tableView.delegate      = self
        tableView.dataSource    = self
        
        tableView.register(StandardTableViewCell.nib(), forCellReuseIdentifier: StandardTableViewCell.identifier)
        tableView.register(SwitchTableViewCell.nib(), forCellReuseIdentifier: SwitchTableViewCell.identifier)
        tableView.register(IndicatorTableViewCell.nib(), forCellReuseIdentifier: IndicatorTableViewCell.identifier)
        tableView.register(DetailTableViewCell.nib(), forCellReuseIdentifier: DetailTableViewCell.identifier)
    }
    
    private func loadData() {
        viewModel.configure()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.models[section].options.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = viewModel.models[section]
        return section.title
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        20
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = viewModel.models[indexPath.section].options[indexPath.row]
        
        switch model.self {
        case .standardCell( let model):
            let cell = tableView.dequeueReusableCell(withIdentifier: StandardTableViewCell.identifier) as! StandardTableViewCell
            cell.configure(title: model.title)
            return cell
        case .indicatorCell(let model):
            let cell = tableView.dequeueReusableCell(withIdentifier: IndicatorTableViewCell.identifier) as! IndicatorTableViewCell
            cell.configure(with: model.title, imageName: model.icon!)
            return cell
        case .switchCell(let model):
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.identifier) as!  SwitchTableViewCell
            cell.configure(with: model.title)
            return cell
        case .detailCell(let model):
            let cell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.identifier) as! DetailTableViewCell
            cell.configure(with: model.title)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = viewModel.models[indexPath.section].options[indexPath.row]
        
        switch type.self {
        case .standardCell(let model):
            model.handler!()
        case .indicatorCell(let model):
            model.handler!()
        case .switchCell(let model):
            model.handler!()
        case .detailCell(let model):
            model.handler!()
        }

    }
}

