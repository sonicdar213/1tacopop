//
//  ReusableView.swift
//  tacoPoP
//
//  Created by Truong Son Nguyen on 4/12/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

import UIKit

protocol ReusableView:class {
}
extension ReusableView where Self: UIView {
    static var reuseIdentifier:String {
        return String(describing: self)
    }
}
