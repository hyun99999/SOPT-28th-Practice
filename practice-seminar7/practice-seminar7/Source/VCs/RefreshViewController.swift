//
//  RefreshViewController.swift
//  practice-seminar7
//
//  Created by kimhyungyu on 2021/05/29.
//

import UIKit
import Lottie

class RefreshViewController: UIViewController {

    @IBOutlet weak var sampleTableView: UITableView!
    
    lazy var lottieView : AnimationView = {
        let animationView = AnimationView(name: "7thSeminar_Lottie_sample")
        animationView.frame = CGRect(x: 0, y: 0,
                                     width: 50, height: 50)
    
        let centerX = UIScreen.main.bounds.width / 2
        animationView.center = CGPoint(x: centerX, y: 40)
        animationView.contentMode = .scaleAspectFit
        animationView.stop()
        animationView.isHidden = true
    
        return animationView
    }()
    
    
    let sampleList : [String] = ["A","B","C","D","E"]
    
    let refreshControl = UIRefreshControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sampleTableView.delegate = self
        sampleTableView.dataSource = self
        initRefresh()
    }
    
    func initRefresh()
    {
        refreshControl.addTarget(self, action: #selector(refreshTable(refresh:)), for: .valueChanged)
        refreshControl.addSubview(lottieView)
        refreshControl.tintColor = .clear
        sampleTableView.refreshControl = refreshControl
    }
    
    @objc func refreshTable(refresh: UIRefreshControl){
        print("새로고침!")
        
        lottieView.isHidden = false
        lottieView.play()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            self.sampleTableView.reloadData()
            
            self.lottieView.isHidden = true
            self.lottieView.stop()
            
            refresh.endRefreshing()
            
        }
        
    }
    
    
    
}
extension RefreshViewController : UITableViewDelegate
{
    
}


extension RefreshViewController : UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let sampleCell = tableView.dequeueReusableCell(withIdentifier: RefreshTableCell.identifier) as? RefreshTableCell else {return UITableViewCell() }
        
        sampleCell.setData(data: sampleList[indexPath.row])
        
        return sampleCell
    }
    
    
}


extension RefreshViewController : UIScrollViewDelegate
{
    
}
