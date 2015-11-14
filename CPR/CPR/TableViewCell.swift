//
//  TableViewCell.swift
//  CPR
//
//  Created by Kay Lab on 11/14/15.
//  Copyright © 2015 Kay Lab. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var settingLabel: UILabel!
    @IBOutlet var switchOutlet: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
