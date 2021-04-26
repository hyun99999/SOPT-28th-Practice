//
//  TextFieldDelegateViewController.swift
//  practice-seminar3
//
//  Created by kimhyungyu on 2021/04/24.
//

import UIKit

class TextFieldDelegateViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        // Do any additional setup after loading the view.
    }
    

}
extension TextFieldDelegateViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textLabel.text = textField.text
        return true
    }
}
