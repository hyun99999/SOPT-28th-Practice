//
//  RefreshTableCell.swift
//  practice-seminar7
//
//  Created by kimhyungyu on 2021/05/29.
//

import UIKit

class RefreshTableCell: UITableViewCell {

    static let identifier : String = "RefreshTableCell"
    
    @IBOutlet weak var sampleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setData(data : String)
    {
        sampleLabel.text = data
    }
}
