//
//  ViewController.swift
//  GooglePlaceAPIDemo
//
//  Created by Kittitat Rodphotong on 8/25/2559 BE.
//  Copyright © 2559 FameSprinter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // MARK: - Variable
    let viewModel = ViewModel()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.restaurantData()
    }

    


}

