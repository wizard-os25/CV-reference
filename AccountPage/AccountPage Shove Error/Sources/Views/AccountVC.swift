//
//  ViewController.swift
//  AccountPage Shove Error
//
//  Created by Nguyen Duc Hung on 16/08/2024.
//

import UIKit

class AccountVC: UIViewController {
    
    let viewModel = AccountViewModel()
    
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var avatarHeader: UIImageView!
    @IBOutlet var titleHeader: UILabel!
    @IBOutlet var buttonFooter: UIButton!
    @IBOutlet var appVersion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        viewModel.handler = {
            self.openUltimate()
        }
        loadTableData()
    }

    @IBAction func didTappedFooterButton(_ sender: Any) {
    }
    
    private func configure() {
        tableView.delegate      = self
        tableView.dataSource    = self
        
        tableView.register(IndicatorTVCell.nib(), forCellReuseIdentifier: IndicatorTVCell.identifier)
        tableView.register(SwitchTVCell.nib(), forCellReuseIdentifier: SwitchTVCell.identifier)
        tableView.register(DetailTVCell.nib(), forHeaderFooterViewReuseIdentifier: DetailTVCell.identifier)
        tableView.register(DetailTVCell2.nib(), forCellReuseIdentifier: DetailTVCell2.identifier)
    }
    
    private func loadTableData() {
        viewModel.getInfoTier()
    }
}

extension AccountVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.models.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.models[section].options.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.models[section].title
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        44
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        24
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = viewModel.models[indexPath.section].options[indexPath.row]
        switch model.self {
        case .indicatorCell(let model):
            if let cell = tableView.dequeueReusableCell(withIdentifier: IndicatorTVCell.identifier) as? IndicatorTVCell {
                cell.configure(with: model.title, leftSubTitle: model.leftSubTitle!, rightSubTitle: model.rightSubTitle, imageName: model.icon!)
                return cell
            }
            return UITableViewCell()
        case .switchCell(let model):
            if let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTVCell.identifier) as? SwitchTVCell {
                cell.configure(with: model.title, imageName: model.icon!, handler: model.handler)
                return cell
            } 
            return UITableViewCell()
        case .detailsCell(let model):
            if let cell = tableView.dequeueReusableCell(withIdentifier: DetailTVCell2.identifier) as? DetailTVCell2 {
                cell.configure(with : model.title)
                return cell
            }
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = viewModel.models[indexPath.section].options[indexPath.row]
        
        switch type.self {
        case .indicatorCell(let model):
            model.handler?()
        case .switchCell(let model):
            model.handler?()
        case .detailsCell(let model):
            if indexPath.row == 0 {
                self.openExtension()
            } else {
                self.openUltimate()
            }
        }
    }
    
    func openExtension() {
        let view = ExtensionDetailViewController(nibName: "ExtensionDetailViewController", bundle: nil)
        self.navigationController?.pushViewController(view, animated: true)
    }
    
    func openUltimate() {
        let view = ExtensionDetailViewController(nibName: "ExtensionDetailViewController", bundle: nil)
        self.navigationController?.pushViewController(view, animated: true)
    }
}

