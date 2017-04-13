//
//  UICollectionView.swift
//  tacoPoP
//
//  Created by Truong Son Nguyen on 4/12/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

import UIKit

extension UICollectionView {
    func register <T: UICollectionViewCell>(_:T.Type) where T: ReusableView, T:NibLoadableView {
        
        let nib = UINib(nibName: T.nibname, bundle: nil)
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    func dequeueReusableCell <T: UICollectionViewCell>(forIndexPath indexpath: NSIndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexpath as IndexPath) as? T else {
            fatalError("Could not dequeue cell with indentifier: \(T.reuseIdentifier)")
        }
        return cell
}
}
extension UICollectionViewCell:ReusableView{}
