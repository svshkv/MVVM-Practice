//
//  TableViewCellViewModel.swift
//  MVVM Practice
//
//  Created by Саша Руцман on 27.08.2019.
//  Copyright © 2019 Саша Руцман. All rights reserved.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
    
    private var profile: Profile
    
    
    init(profile: Profile) {
        self.profile = profile
    }
}
