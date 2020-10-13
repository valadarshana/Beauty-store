//
//  ProductListVC.swift
//  Beauty store
//
//  Created by Vijay Parmar on 13/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit

class ProductListVC: UITableViewCell {
    @IBOutlet weak var imgProduct: UIImageView!
    
    @IBOutlet weak var lblProductName: UILabel!

    @IBOutlet weak var btnShare: UIButton!
    @IBOutlet weak var lblDesc: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
