//
//  ViewController.swift
//  HW-4-nw
//
//  Created by siflaim on 2.06.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var wB: UILabel!
    
    @IBOutlet weak var bB: UILabel!
    
    @IBOutlet weak var Sales: UILabel!
    
    var beer3 = Beer(beerName: "Kolko", strength: "7.2$", price: 5.60, madeIn: "Chine", remainder: 60.2, contain: 0.88)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        saleManagerSingltone.saleBeer.warehouse.append(contentsOf: [beer3])
        
        wB.text = ("\(saleManagerSingltone.saleBeer.contain("White Beer"))")

    }

    @IBAction func wbBut(_ sender: Any) {
        Sales.text = ("бабосики: \(saleManagerSingltone.saleBeer.smm("White Beer")) $")
        wB.text = ("ostatok: \(saleManagerSingltone.saleBeer.contain("White Beer")) litrov")
        
        
    }
    
    
    @IBAction func bbBut(_ sender: Any) {
        Sales.text = ("бабосики: \(saleManagerSingltone.saleBeer.smm("Black Beer")) $")
        bB.text = ("ostatok: \(saleManagerSingltone.saleBeer.contain("Black Beer")) litrov")
    }
    
    
    @IBAction func dayNewBut(_ sender: Any) {
        Sales.text = ("\(saleManagerSingltone.saleBeer.newDay(0) )")
    }
}

