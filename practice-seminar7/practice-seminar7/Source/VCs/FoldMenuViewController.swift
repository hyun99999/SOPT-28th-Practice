//
//  FoldMenuViewController.swift
//  practice-seminar7
//
//  Created by kimhyungyu on 2021/05/29.
//

import UIKit

class FoldMenuViewController: UIViewController {
    
    @IBOutlet weak var arrowImageView: UIButton!
    @IBOutlet weak var menuHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var menuView: UIView!
    
    var isOpened : Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func expandedButtonClicked(_ sender: Any) {
        
        UIView.animate(withDuration: 0.5) {
            if self.isOpened{
                self.close()
            }
            else
            {
                self.open()
            }
        }
    }
    
    func open()
    {
        print("open")
        
        menuHeightConstraint.constant = 200
        arrowImageView.transform = CGAffineTransform(rotationAngle: .pi)
        self.view.layoutIfNeeded()
        isOpened = true
    }
    func close()
    {
        print("close")
        menuHeightConstraint.constant = 100
        arrowImageView.transform = CGAffineTransform(rotationAngle: 0)
        self.view.layoutIfNeeded()
        isOpened = false
        
    }
    
}
