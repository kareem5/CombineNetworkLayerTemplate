//
//  ViewController.swift
//  CombineNetworkLayerTemplate
//
//  Created by Kareem Ahmed on 01/02/2022.
//

import UIKit

class ViewController: UIViewController {
    let viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.loadBooks()
    }
}

