//
//  TableViewCellitems.swift
//  proj
//
//  Created by iroid on 11/12/23.
//  Copyright © 2023 iroid. All rights reserved.
//

import UIKit

class TableViewCellitems: UITableViewCell {

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
