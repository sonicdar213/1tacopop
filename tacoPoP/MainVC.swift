//
//  MainVC.swift
//  tacoPoP
//
//  Created by Truong Son Nguyen on 4/11/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

import UIKit

class MainVC: UIViewController , DataServiceDelegate{
    @IBOutlet weak var headerView:HeaderView!
    @IBOutlet weak var collectionView:UICollectionView!
    var ds:DataService = DataService.instance
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        ds.delegate = self
        ds.loadDeliciousTacoData()
        headerView.addDropShadown()
    let nib = UINib(nibName: "TacoCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
    }
    func deliciousTacoDataLoaded() {
        print("Delicious Taco data Loaded!")
    }

}
extension MainVC:   UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
  
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.TacoArray.count
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configureCell(taco: ds.TacoArray[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }

}
