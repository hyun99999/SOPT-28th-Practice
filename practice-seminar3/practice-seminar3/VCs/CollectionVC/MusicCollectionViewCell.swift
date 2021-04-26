//
//  MusicCollectionViewCell.swift
//  practice-seminar3
//
//  Created by kimhyungyu on 2021/04/24.
//

import UIKit

class MusicCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "MusicCollectionViewCell"
    
    @IBOutlet weak var albumImageView: UIImageView!
    
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setData(imageName: String,
                 title:String,
                 subtitle: String) {
        if let image = UIImage(named: imageName) {
            albumImageView.image = image
        }
            titleLabel.text = title
            subtitleLabel.text = subtitle
    }
}
