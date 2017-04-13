//
//  DropShadow.swift
//  tacoPoP
//
//  Created by Truong Son Nguyen on 4/11/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

import UIKit

protocol DropShadown {}
extension DropShadown where Self:UIView {
    func addDropShadown() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize.zero
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 5
    }
}
