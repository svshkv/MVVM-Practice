//
//  TableViewModelType.swift
//  MVVM Practice
//
//  Created by Саша Руцман on 27.08.2019.
//  Copyright © 2019 Саша Руцман. All rights reserved.
//

import Foundation

protocol TableViewViewModelType {
    var numberOfRows: Int { get }
    func cellViewModel(forIndexPath IndexPath: IndexPath) -> TableViewCellViewModelType?
}
