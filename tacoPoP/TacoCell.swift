//
//  TacoCell.swift
//  tacoPoP
//
//  Created by Truong Son Nguyen on 4/12/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell {

    @IBOutlet weak var tacoImage : UIImageView!
    @IBOutlet weak var tacolbl : UILabel!
    var taco :Taco!
    func configureCell(taco:Taco){
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinID.rawValue)
        tacolbl.text = taco.productname
    
    
    }

}
