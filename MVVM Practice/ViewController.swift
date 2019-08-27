//
//  ViewController.swift
//  MVVM Practice
//
//  Created by Саша Руцман on 27.08.2019.
//  Copyright © 2019 Саша Руцман. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var viewModel: ViewModel! {
        didSet {
                self.nameLabel.text = viewModel.name
                self.secondNameLabel.text = viewModel.secondName
                self.ageLabel.text = viewModel.age
            }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
        //profile = Profile(name: "Sasha", secondName: "Rutsman", age: 19)
    }


}

