//
//  ViewController.swift
//  VKApiApp
//
//  Created by Глеб Писарев on 23.02.2022.
//

import UIKit

class SearchViewController: UIViewController {
    @IBOutlet weak var searchButtonOutlet: UIButton!
    
    @IBOutlet weak var enterAdress: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchButtonOutlet.layer.cornerRadius = 10
    }


}

