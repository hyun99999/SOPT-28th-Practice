//
//  SecondViewController.swift
//  testProject
//
//  Created by kimhyungyu on 2021/04/03.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    //옵셔널 변수로 선언.
    var message : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLabel()
        // Do any additional setup after loading the view.
    }
    
    func setLabel() {
        if let msg = self.message {
            textLabel.text = msg
        }
    }
    
    @IBAction func backButtonClicked(_ sender: Any) {
        //navigation 으로 바꾸게 되면 먹히지 않는다.
        //present 로 구성되는 modal 에서만 가능.
//        self.dismiss(animated: true, completion: nil)
        
        //push 의 반대인 pop 을 통해서 뒤로가기 할 것.
        self.navigationController?.popViewController(animated: true)
    }

}
