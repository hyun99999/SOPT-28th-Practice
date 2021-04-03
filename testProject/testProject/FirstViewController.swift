//
//  FirstViewController.swift
//  testProject
//
//  Created by kimhyungyu on 2021/04/03.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeButtonClicked(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else {
                return
            }
        //modally
//        nextVC.modalPresentationStyle = .overCurrentContext
//        nextVC.modalTransitionStyle = .crossDissolve
//        self.present(nextVC, animated: true, completion: nil)
        
        //navigation
        self.navigationController?.pushViewController(nextVC, animated: true)
        //message 변수를 옵셔널 변수로 선언했기 때문에 가능.
        nextVC.message = textField.text
        }
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
