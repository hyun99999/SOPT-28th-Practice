//
//  AnimationViewController.swift
//  practice-seminar7
//
//  Created by kimhyungyu on 2021/05/29.
//

import UIKit

class AnimationViewController: UIViewController {

    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var sampleImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButtonClicked(_ sender: Any) {
        self.imageViewTopConstraint.constant = 400
        UIView.animate(withDuration: 2) {
//            self.sampleImageView.center = self.view.center
//            let scale = CGAffineTransform(translationX: 100, y: 100)
//            let scale = CGAffineTransform(rotationAngle: .pi)
            self.view.layoutIfNeeded()
            self.sampleImageView.alpha = 0.4
//            self.sampleImageView.transform = scale
        } completion: { finished in
            UIView.animate(withDuration: 2.0) {
                self.sampleImageView.transform = .identity
            }
        }
    }
}
