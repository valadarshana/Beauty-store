//
//  ViewController.swift
//  Beauty store
//
//  Created by Vijay Parmar on 12/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchView: UIView!
    
    @IBOutlet weak var txtSearch: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        searchView.layer.cornerRadius=8
        
        // Do any additional setup after loading the view.
    }


}

