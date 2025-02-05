//
//  ContentTBVViewModel.swift
//  Standard Form TableView
//
//  Created by Nguyen Duc Hung on 15/08/2024.
//

import Foundation
import UIKit

class ContentTBVViewModel {
    var models = [Sections]()
    
    func configure() {
        models.append(
            Sections(
                title: TableViewInfoTier.AccountPage.userNotifications,
                options: [
                    .switchCell(model: SwitchCell(title: TableViewInfoTier.AccountPage.userNotifications, icon: TableViewInfoTier.iconName.bell, iconBackgroundColor: .white, handler: nil))
                ])
        )
        
        models.append(Sections(
            title: TableViewInfoTier.AccountPage.paymentMethod,
        options: [
            .indicatorCell(model: IndicatorCell(title: TableViewInfoTier.AccountPage.bankTransfer, subTitle: TableViewInfoTier.AccountPage.subBankAccount, detailIndicator: nil, icon: TableViewInfoTier.iconName.creditCard, iconBackgroundColor: .systemGray5, handler: nil)),
            .indicatorCell(model: IndicatorCell(title: TableViewInfoTier.AccountPage.creditCard, subTitle: TableViewInfoTier.AccountPage.comingSoon, detailIndicator: nil, icon: TableViewInfoTier.iconName.creditCardCircle, iconBackgroundColor: .red, handler: nil))
        ])
        )
        
        models.append(Sections(
            title: TableViewInfoTier.AccountPage.management,
        options: [
            .switchCell(model: SwitchCell(title: TableViewInfoTier.AccountPage.montlyNotification, icon: TableViewInfoTier.iconName.bellBagde, iconBackgroundColor: .systemMint, handler: nil)),
            .indicatorCell(model: IndicatorCell(title: TableViewInfoTier.AccountPage.dataAnalysis, subTitle: TableViewInfoTier.AccountPage.subElectric, detailIndicator: nil, icon: TableViewInfoTier.iconName.pencilLine, iconBackgroundColor: .systemBrown, handler: nil)),
            .detailCell(model: DetailCell(title: TableViewInfoTier.AccountPage.guide, icon: TableViewInfoTier.iconName.book, iconBackgroundColor: .blue, handler: nil))
        ])
        )
    }
}
