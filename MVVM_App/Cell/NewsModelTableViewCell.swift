//
//  NewsModelTableViewCell.swift
//  MVVM_App
//
//  Created by R95 on 01/04/24.
//

import UIKit

class NewsModelTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabelOutlet: UILabel!
    @IBOutlet weak var discriptionLabelOutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
