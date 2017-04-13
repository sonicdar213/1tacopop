//
//  DataService.swift
//  tacoPoP
//
//  Created by Truong Son Nguyen on 4/12/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

import Foundation
protocol DataServiceDelegate: class {
    func deliciousTacoDataLoaded()
}
class DataService {
    static let instance = DataService()
    weak var delegate: DataServiceDelegate?
    var TacoArray: Array<Taco> = []
    
    func loadDeliciousTacoData() {
        TacoArray.append(Taco(id: 1, productname: "Loaded Flour Chicken Taco", shellID: 1, proteinID: 2, condimentID: 1))
        TacoArray.append(Taco(id: 2, productname: "Loaded Corn Chicken Taco", shellID: 2, proteinID: 2, condimentID: 1))
        TacoArray.append(Taco(id: 3, productname: "Plain Flour Chicken Taco", shellID: 1, proteinID: 2, condimentID: 2))
        TacoArray.append(Taco(id: 4, productname: "Plain Corn Chicken Taco", shellID: 2, proteinID: 2, condimentID: 2))
        
        // Beef Tacos
        TacoArray.append(Taco(id: 5, productname: "Loaded Flour Beef Taco", shellID: 1, proteinID: 1, condimentID: 1))
        TacoArray.append(Taco(id: 6, productname: "Loaded Corn Beef Taco", shellID: 2, proteinID: 1, condimentID: 1))
        TacoArray.append(Taco(id: 7, productname: "Plain Flour Beef Taco", shellID: 1, proteinID: 1, condimentID: 2))
        TacoArray.append(Taco(id: 8, productname: "Plain Corn Beef Taco", shellID: 2, proteinID: 1, condimentID: 2))
        
        // Brisket Tacos
        TacoArray.append(Taco(id: 9, productname: "Loaded Flour Brisket Taco", shellID: 1, proteinID: 3, condimentID: 1))
        TacoArray.append(Taco(id: 10, productname: "Loaded Corn Brisket Taco", shellID: 2, proteinID: 3, condimentID: 1))
        TacoArray.append(Taco(id: 11, productname: "Plain Flour Brisket Taco", shellID: 1, proteinID: 3, condimentID: 2))
        TacoArray.append(Taco(id: 12, productname: "Plain Corn Brisket Taco", shellID: 2, proteinID: 3, condimentID: 2))
        
        // Fish Tacos
        TacoArray.append(Taco(id: 13, productname: "Loaded Flour Fish Taco", shellID: 1, proteinID: 4, condimentID: 1))
        TacoArray.append(Taco(id: 14, productname: "Loaded Corn Fish Taco", shellID: 2, proteinID: 4, condimentID: 1))
        TacoArray.append(Taco(id: 15, productname: "Plain Flour Fish Taco", shellID: 1, proteinID: 4, condimentID: 2))
        TacoArray.append(Taco(id: 16, productname: "Plain Corn Fish Taco", shellID: 2, proteinID: 4, condimentID: 2))
        
        delegate?.deliciousTacoDataLoaded()
    }

    }

