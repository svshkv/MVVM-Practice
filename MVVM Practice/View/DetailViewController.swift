//
//  DetailViewController.swift
//  MVVM Practice
//
//  Created by Саша Руцман on 27.08.2019.
//  Copyright © 2019 Саша Руцман. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }
    

}
