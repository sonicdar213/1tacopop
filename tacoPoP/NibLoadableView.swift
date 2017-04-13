//
//  NibLoadableView.swift
//  tacoPoP
//
//  Created by Truong Son Nguyen on 4/12/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

import UIKit

protocol NibLoadableView : class {
}
extension NibLoadableView where Self:UIView {
    static var nibname:String {
        return String(describing: self)
    }
}
