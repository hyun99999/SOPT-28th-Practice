//
//  ViewController.swift
//  practice-seminar4
//
//  Created by kimhyungyu on 2021/05/06.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {

        super.viewDidLoad()

    }
    @IBAction func getButtonClicked(_ sender: Any) {
        GetPersonDataService.shared.getPersonInfo { response in
            switch(response)
            {
            case .success(let personData):
                if let data = personData as? Person {
                    
                    self.nameLabel.text = data.name
                    self.messageLabel.text = data.profileMessage
                }
            case .requestErr(let message) :
                print("requestERR",message)
            case .pathErr :
                print("pathERR")
            case .serverErr:
                print("serverERR")
            case .networkFail:
                print("networkFail")
            }
            
        }
    }
}
