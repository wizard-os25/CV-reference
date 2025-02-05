//
//  ContentTBVModels.swift
//  Standard Form TableView
//
//  Created by Nguyen Duc Hung on 15/08/2024.
//

import Foundation
import UIKit

struct Sections {
    let title: String
    let options: [FormCells]
}

enum FormCells {
    case standardCell(model: StandardCell)
    case switchCell(model: SwitchCell)
    case indicatorCell(model: IndicatorCell)
    case detailCell(model: DetailCell)
    
    //case onlyBlueText(model: OnlyBlueText)
    
}

struct SwitchCell {
    let title: String
    let icon: String?
    let iconBackgroundColor: UIColor?
    let handler: (() -> Void)?
}

struct StandardCell {
    let title: String
    let subTitle: String?
    let icon: String?
    let iconBackgroundColor: UIColor?
    let handler: (() -> Void)?
}

struct IndicatorCell {
    let title: String
    let subTitle: String?
    let detailIndicator: String?
    let icon: String?
    let iconBackgroundColor: UIColor?
    let handler: (() -> Void)?
}

struct DetailCell {
    let title: String
    let icon: String?
    let iconBackgroundColor: UIColor?
    let handler: (() -> Void)?
}

//struct OnlyBlueText {
//    let title: String
//    let showBottomAlert: (() -> Void)?
//}


