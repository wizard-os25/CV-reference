//
//  AccountTableViewModel.swift
//  AccountPage Shove Error
//
//  Created by Nguyen Duc Hung on 16/08/2024.
//

import Foundation
import UIKit

struct Sections {
    let title: String
    let options: [FormCells]
}

enum FormCells {
    case indicatorCell(model: IndicatorCell)
    case switchCell(model: SwitchCell)
    case detailsCell(model: DetailCell)
}

struct IndicatorCell {
    let title: String
    let leftSubTitle: String?
    let rightSubTitle: String?
    let icon: String?
    let handler: (() -> Void)?
}

struct SwitchCell {
    let title: String
    let icon: String?
    let handler: (() -> Void)?
}

struct DetailCell {
    let title: String
    let handler: (() -> Void)?
}
