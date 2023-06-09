//
//  WeatherTableViewCell.swift
//  GoodWeather-MVVM
//
//  Created by DA MAC M1 157 on 2023/06/09.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityTempLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
