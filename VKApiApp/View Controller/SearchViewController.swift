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
    @IBOutlet weak var countLabel: UILabel!
    
    private var json: Welcome? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchButtonOutlet.layer.cornerRadius = 10
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let collectionViewController = segue.destination as! CollectionViewController
        collectionViewController.getData(domain: enterAdress.text ?? "", count: countLabel.text ?? "1")
    }
    
    
    @IBAction func changeCountAction(_ sender: UIStepper) {
        countLabel.text = String(Int(sender.value))
    }
}

