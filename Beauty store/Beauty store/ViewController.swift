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
    var image:String!
    var productName:String!
    var productDesc:String!
};
class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
        
    

    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var txtSearch: UITextField!
    @IBOutlet weak var tblItrm: UITableView!
    
    var objProduct=[Product]()
    var objProductTemp=[Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        objProduct.append(Product(image: "img1", productName: "Ponds", productDesc: "This is demo textx of my product that is used for test"))
        objProduct.append(Product(image: "img2", productName: "White Tone", productDesc: "This is demo textx of my product that is used for test"))
        objProduct.append(Product(image: "img3", productName: "Lakme Kajal", productDesc: "This is demo textx of my product that is used for test"))
        objProduct.append(Product(image: "img4", productName: "Glow and Lovely", productDesc: "This is demo textx of my product that is used for test"))
        
        objProductTemp = objProduct
        tblItrm.dataSource=self
        tblItrm.delegate=self

        searchView.layer.cornerRadius=8
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objProduct.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblItrm.dequeueReusableCell(withIdentifier: "ProductListVC", for: indexPath)as! ProductListVC
        cell.imgProduct.image=UIImage(named: objProduct[indexPath.row].image)
        cell.lblProductName.text=objProduct[indexPath.row].productName
        cell.lblDesc.text=objProduct[indexPath.row].productDesc
        cell.btnShare.tag=indexPath.row
        cell.btnShare.addTarget(self, action: #selector(btn_click), for: .touchUpInside)
        return cell
    }
    @objc func btn_click(_ sender:UIButton){
        
        //Code to share Message  Link and String
        let txtShare = objProduct[sender.tag].productName
        let myWebSite = URL(string:"https://www.apple.com")
        let shareAll = [txtShare!,myWebSite!]as! [Any]
        let vc = UIActivityViewController(activityItems: shareAll, applicationActivities: nil)
        self.present(vc, animated: true, completion: nil)
        
        
    }
    
  
    @IBAction func editingChange(_ sender: UITextField) {
        objProduct.removeAll()
        if txtSearch.text?.count == 0{
            objProduct=objProductTemp
        }
        
        var i=0
        while i < objProductTemp.count {
            
            if objProductTemp[i].productName.lowercased().contains(txtSearch.text!.lowercased()){
                objProduct.append(objProductTemp[i])
            }
            i=i+1
        }
        tblItrm.reloadData()
        
    }
    
}

