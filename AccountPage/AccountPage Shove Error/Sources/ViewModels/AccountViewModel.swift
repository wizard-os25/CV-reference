//
//  AccountViewModel.swift
//  AccountPage Shove Error
//
//  Created by Nguyen Duc Hung on 16/08/2024.
//

import Foundation
import UIKit

class AccountViewModel {
     
    var models = [Sections]()
    var handler: (() -> Void)?
    func getInfoTier() {
        models.append(
            Sections(
            title: AccountTBCInfoTier.SectionsName.userNotification, 
            options: [ .switchCell(model: SwitchCell(title: AccountTBCInfoTier.CellsTitle.userNotiCell1, icon: AccountTBCInfoTier.iconName.firstIcon, handler: {
                self.openNotification()
            }))
            ])
        )
        
        models.append(
            Sections(
            title: AccountTBCInfoTier.SectionsName.paymentMethod,
            options: [
                .indicatorCell(model: IndicatorCell(title: AccountTBCInfoTier.CellsTitle.paymentCell1, leftSubTitle: AccountTBCInfoTier.CellsLeftSubTitle.paymentLeftSubCell1, rightSubTitle: AccountTBCInfoTier.CellsRightSubTitle.paymentRightSubCell1, icon: AccountTBCInfoTier.iconName.secondIcon, handler: nil)),
                .indicatorCell(model: IndicatorCell(title: AccountTBCInfoTier.CellsTitle.paymentCell2, leftSubTitle: AccountTBCInfoTier.CellsLeftSubTitle.paymentLeftSubCell2, rightSubTitle: AccountTBCInfoTier.CellsRightSubTitle.paymentRightSubCell2, icon: AccountTBCInfoTier.iconName.thirdIcon, handler: nil)),
            ])
        )
        
        models.append(
            Sections(
            title: AccountTBCInfoTier.SectionsName.management,
            options: [
                .indicatorCell(model: IndicatorCell(title: AccountTBCInfoTier.CellsTitle.manageCell1, leftSubTitle: AccountTBCInfoTier.CellsLeftSubTitle.manageLeftSubCell1, rightSubTitle: AccountTBCInfoTier.CellsRightSubTitle.manageRightSubCell1, icon: AccountTBCInfoTier.iconName.fouthIcon, handler: nil)),
                .indicatorCell(model: IndicatorCell(title: AccountTBCInfoTier.CellsTitle.manageCell2, leftSubTitle: AccountTBCInfoTier.CellsLeftSubTitle.manageLeftSubCell2, rightSubTitle: AccountTBCInfoTier.CellsRightSubTitle.manageRightSubCell2, icon: AccountTBCInfoTier.iconName.fifthIcon, handler: nil))
            ])
        )
        
        models.append(Sections(title: AccountTBCInfoTier.SectionsName.guide, options: [
            .detailsCell(model: DetailCell(title: AccountTBCInfoTier.CellsTitle.guideCell1, handler: nil)),
            .detailsCell(model: DetailCell(title: AccountTBCInfoTier.CellsTitle.guideCell2, handler: nil))]))
    }
    
    func openNotification() {
        let view = ExtensionDetailViewController(nibName: "ExtensionDetailViewController", bundle: nil)
        let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first

        if var topController = keyWindow?.rootViewController as? UINavigationController {
            topController.pushViewController(view, animated: true)
        // topController should now be your topmost view controller
        }
    }
}
