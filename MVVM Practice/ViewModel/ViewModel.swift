//
//  ViewModel.swift
//  MVVM Practice
//
//  Created by Саша Руцман on 27.08.2019.
//  Copyright © 2019 Саша Руцман. All rights reserved.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath: IndexPath) {
        self.selectedIndexPath = atIndexPath
    }
    
    
    func cellViewModel(forIndexPath IndexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[IndexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    var profiles = [
        Profile(name: "Sasha", secondName: "Rutsman", age: 19),
        Profile(name: "Lena", secondName: "Berdechnikova", age: 19),
        Profile(name: "Akop", secondName: "Magov", age: 33)
    ]
    
    var numberOfRows: Int {
        return profiles.count
    }
    
//    var name: String {
//        return profile.name
//    }
//
//    var secondName: String {
//        return profile.secondName
//    }
//
//    var age: String {
//        return String(describing: profile.age)
//    }
}
