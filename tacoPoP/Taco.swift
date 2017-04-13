//
//  Taco.swift
//  tacoPoP
//
//  Created by Truong Son Nguyen on 4/11/17.
//  Copyright © 2017 Truong Son Nguyen. All rights reserved.
//

import Foundation

enum TacoShell:Int {
    case Flour = 1
    case Corn = 2
}
enum Tacoprotein :String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}
enum TacoCondiment:Int{
    case Loaded = 1
    case Plain = 2
}

struct Taco {
    private var _id:Int!
    private var _productname:String!
    private var _shellid:TacoShell!
    private var _proteinid : Tacoprotein!
    private var _condimentid:TacoCondiment!

    var id: Int {
        return _id
    }
    var productname:String {
    return _productname
}
    var shellID:TacoShell{
    return _shellid
}
    var proteinID:Tacoprotein {
    return _proteinid
}
    var condimentID:TacoCondiment {
    return _condimentid
    }
    init(id:Int , productname:String, shellID : Int , proteinID: Int , condimentID : Int) {
        _id = id
        _productname = productname
        //Taco shell
        switch shellID {
        case 2 :
            self._shellid = TacoShell.Corn
        default:
            self._shellid = TacoShell.Flour
        }
        //Taco protein
        switch proteinID {
        case 2:
            self._proteinid = Tacoprotein.Beef
        case 3:
            self._proteinid = Tacoprotein.Chicken
        case 4:
            self._proteinid = Tacoprotein.Fish
        default:
            self._proteinid = Tacoprotein.Brisket
        }
        //Taco condiment
        switch condimentID {
        case 2:
            self._condimentid = TacoCondiment.Plain
        default:
            self._condimentid = TacoCondiment.Loaded
        }
    }
}

