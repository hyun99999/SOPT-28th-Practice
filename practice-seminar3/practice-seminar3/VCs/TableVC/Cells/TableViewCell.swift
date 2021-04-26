//
//  TableViewCell.swift
//  practice-seminar3
//
//  Created by kimhyungyu on 2021/04/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    //MAKR: - Properties
    static let identifier: String = "TableViewCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var downloadBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(iconImageName: String,
                 title: String,
                 subTitle: String) {
        if let img = UIImage(named: iconImageName){
            iconImageView.image = img
        }
        titleLabel.text = title
        subTitleLabel.text = subTitle
    }
    
}
