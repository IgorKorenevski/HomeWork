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
    
    @IBOutlet weak var kolk: UILabel!
    
    @IBOutlet weak var wBL: UILabel!
    
    
    let beer1 = Beer(beerName: "Kolko", strength: "7.2$", price: 5.60, madeIn: "Chine", remainder: 60.2, contain: 0.88)

    let appber: (Any) = saleManagerSingltone.saleBeer.warehouse.append(contentsOf: [Beer(beerName: "Kolko beer", strength: "7.2$", price: 5.60, madeIn: "Chine", remainder: 60.2, contain: 0.88)])
    
    let appBeerFunc = saleManagerSingltone.saleBeer.appBeer(beerName: "Wilo Beer", strength: "4.5 %", price: 5.6, madeIn: "Belgia", remainder: 68, contain: 0.87)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
//        saleManagerSingltone.saleBeer.newBeer(Beer(beerName: "Kolko", strength: "7.2$", price: 5.60, madeIn: "Chine", remainder: 60.2, contain: 0.88))
        
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
    
 
    @IBAction func kolka(_ sender: Any) {

        kolk.text = ("ostatok: \(saleManagerSingltone.saleBeer.contain("Kolko beer")) litrov")
            Sales.text = ("бабосики: \(saleManagerSingltone.saleBeer.smm("Kolko beer")) $")
    }
    
    @IBAction func wBT(_ sender: Any) {
        wBL.text = ("ostatok: \(saleManagerSingltone.saleBeer.contain("Wilo Beer")) litrov")
        Sales.text = ("бабосики: \(saleManagerSingltone.saleBeer.smm("Wilo Beer")) $")
    }
    
    
}

