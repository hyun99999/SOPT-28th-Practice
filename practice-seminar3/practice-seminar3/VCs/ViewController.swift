//
//  ViewController.swift
//  practice-seminar3
//
//  Created by kimhyungyu on 2021/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchPushBtn(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
           return
        }
//        nextVC.delegate = self
        
        //notification observer 등록
        NotificationCenter.default.addObserver(self, selector: #selector(dataReceived), name: NSNotification.Name("sample"), object: nil)
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc func dataReceived(notification : Notification) {
        if let text = notification.object as? String {
            textLabel.text = text
        }
    }
}

extension ViewController: sampleProtocol {
    func sendProtocol(data: String) {
        textLabel.text = data
    }
}
