//
//  ViewController.swift
//  testProject
//
//  Created by kimhyungyu on 2021/04/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var numberLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeButtonClicked(_ sender: UIButton) {
        if nameLabel.text?.isEmpty == false && numberLabel.text?.isEmpty == false {
            titleLabel.text = "\(nameLabel.text!) 의 번호는 \(numberLabel.text!) 입니다."
        }
        else {
            titleLabel.text = ""
        }
    }
}


