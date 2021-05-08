//
//  MusicCollectionView.swift
//  practice-seminar3
//
//  Created by kimhyungyu on 2021/04/24.
//

import UIKit

class MusicCollectionView: UIViewController {

    var musicList: [MusicDataModel] = []
    
    
    @IBOutlet weak var musicCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMusicList()
        
//        musicCollectionView.register(MusicCollectionViewCell.self, forCellWithReuseIdentifier: "MusicCollectionViewCell")
        
        musicCollectionView.delegate = self
        musicCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func setMusicList()
    {
        musicList.append(contentsOf: [
            MusicDataModel(coverName: "musicAlbum1",
                           musicTitle: "가습기",
                           singer: "한요한"),
            
            MusicDataModel(coverName: "musicAlbum2",
                           musicTitle: "Thick and Thin",
                           singer: "LANY"),
            
            MusicDataModel(coverName: "musicAlbum3",
                           musicTitle: "시공간",
                           singer: "기리보이"),
            
            MusicDataModel(coverName: "musicAlbum4",
                           musicTitle: "NISEKOI",
                           singer: "Futuristic Swaver")
        ])
    }
}


extension MusicCollectionView : UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return musicList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let musicCell = collectionView.dequeueReusableCell(withReuseIdentifier: MusicCollectionViewCell.identifier, for: indexPath)
                as? MusicCollectionViewCell
        else {return UICollectionViewCell() }
        
        musicCell.setData(imageName: musicList[indexPath.row].coverName,
                          title: musicList[indexPath.row].musicTitle,
                          subtitle: musicList[indexPath.row].singer)
        
        return musicCell
    }
    
}
extension MusicCollectionView : UICollectionViewDelegate
{
    
}
extension MusicCollectionView : UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = UIScreen.main.bounds.width
        
        let cellWidth = width * (177/375)
        let cellHeight = cellWidth * (205/177)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
}
