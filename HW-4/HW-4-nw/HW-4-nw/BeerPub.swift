//
//  BeerPub.swift
//  HW-4-nw
//
//  Created by siflaim on 2.06.22.
//

import Foundation

class Beer{
    var beerName: String
    var strength: String
    var price: Double
    var madeIn: String
    var remainder: Double
    var contain: Double
    
    init(beerName: String, strength: String, price: Double, madeIn: String, remainder: Double, contain: Double) {
        
        self.beerName = beerName
        self.strength = strength
        self.price = price
        self.madeIn = madeIn
        self.remainder = remainder
        self.contain = contain
    }
}

class saleManagerSingltone {
    
    static let saleBeer = saleManagerSingltone ()
    private var salePriceDay: Double = 0.0
    
    private init () {}
    
    private var warehouse = [Beer(beerName: "Black Beer", strength: "4.3–5.6% об.", price: 6.0, madeIn: "Germany", remainder: 51.3, contain: 0.55),
                             Beer(beerName: "White Beer", strength: "4.6%", price: 11.0, madeIn: "Belarus", remainder: 40, contain: 0.44)]
    
    func smm (_ name: String) -> Double {
        if let sm = warehouse.first(where: { $0.beerName == name }) {
            if salePriceDay >= 0 {
                salePriceDay += sm.price
                return salePriceDay
            } else {
                return 0
            }
        }
        return salePriceDay
    }
    
    
    func contain (_ name: String) -> Double {
        if let con = warehouse.first(where: { $0.beerName == name }) {
            con.remainder -= con.contain
            return round(con.remainder * 1000) / 1000
        }
        return 0
    }
    
    func newDay (_ name: Double) -> Double {
        salePriceDay = 0
        return salePriceDay
    }
    

}
    
