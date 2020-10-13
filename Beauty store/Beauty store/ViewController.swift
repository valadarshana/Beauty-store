//
//  ViewController.swift
//  Beauty store
//
//  Created by Vijay Parmar on 12/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit
struct Product
{
   var image:UIImage!
    var productName:String!
    var productDesc:String!
};
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
        

    @IBOutlet weak var searchView: UIView!
    
    @IBOutlet weak var txtSearch: UITextField!
    
    @IBOutlet weak var tblItrm: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var objProduct=[Product]()
        objProduct.append(<#T##newElement: Product##Product#>)
        
        
        tblItrm.dataSource=self
        tblItrm.delegate=self

        searchView.layer.cornerRadius=8
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblItrm.dequeueReusableCell(withIdentifier: "ProductListVC", for: indexPath)as! ProductListVC
        cell.imgProduct.image=UIImage(named: "")
        cell.lblProductName.text=""
        cell.lblDesc.text=""
        cell.btnShare.addTarget(self, action: #selector(btn_click), for: .touchUpInside)
        return cell
    }
    @objc func btn_click(){

    }

}

