//
//  SecondViewController.swift
//  practice-seminar3
//
//  Created by kimhyungyu on 2021/04/24.
//

import UIKit

protocol sampleProtocol {
    func sendProtocol(data: String)
}

class SecondViewController: UIViewController {

    var delegate : sampleProtocol?
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchBackBtn(_ sender: Any) {
        if let text = textField.text {
//            delegate?.sendProtocol(data: text)
            
            //notificationCenter 등록 사용
            NotificationCenter.default.post(name: NSNotification.Name("sample"), object: text, userInfo: nil)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
}
