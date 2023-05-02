//
//  CitiesTableViewCell.swift
//  places
//
//  Created by Mohammad on 2023-05-02.
//

import UIKit

class CitiesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var placeImageView: UIImageView!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var citiyLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
