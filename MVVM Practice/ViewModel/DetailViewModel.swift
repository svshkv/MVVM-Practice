//
//  DetailViewModel.swift
//  MVVM Practice
//
//  Created by Саша Руцман on 27.08.2019.
//  Copyright © 2019 Саша Руцман. All rights reserved.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: profile.secondName)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
