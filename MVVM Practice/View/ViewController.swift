//
//  ViewController.swift
//  MVVM Practice
//
//  Created by Саша Руцман on 27.08.2019.
//  Copyright © 2019 Саша Руцман. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: TableViewViewModelType?


    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()
        tableView.delegate = self
        tableView.dataSource = self
        //profile = Profile(name: "Sasha", secondName: "Rutsman", age: 19)
    }


}

