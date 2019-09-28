//
//  TeamTaskTableViewCell.swift
//  HelloWorld
//
//  Created by Jui Tao Tsai on 9/27/19.
//  Copyright © 2019 Jui Tau Tsai. All rights reserved.
//

import UIKit

class TeamTaskTableViewCell: UITableViewCell {





    @IBOutlet weak var taskNumLabel: UILabel!
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var groupTitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
