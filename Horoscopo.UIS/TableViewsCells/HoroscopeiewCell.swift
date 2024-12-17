//
//  HoroscopeiewCell.swift
//  Horoscopo.UIS
//
//  Created by Tardes on 13/12/24.
//

import UIKit

class HoroscopeiewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var dastesLabel: UILabel!
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func render(from horoscope:Horoscope)
    {
        nameLabel.text = horoscope.name
        dastesLabel.text = horoscope.dates
        iconImageView.image = horoscope.icon
    }

}
