//
//  ViewController.swift
//  HomeWork_main
//
//  Created by siflaim on 9.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    let aWhole = 2
    let bWhole = 9
    let cWhole = 6
    let dWhole = 8
    

    let aFract = 0.5
    let bFract = 0.7
    let cFract = 0.9
    let dFract = 0.2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//Вариант 1
        let sumWhole = aWhole + bWhole + cWhole + dWhole
        print(sumWhole)
        
        let sumFract = aFract + bFract + cFract + dFract
        print(sumFract)

//Вариант 2
        let sumWholeTwo = 2 + 9 + 6 + 8
        let sumFractTwo = 0.5 + 0.7 + 0.9 + 0.2
        print("\(sumWholeTwo) \(sumFractTwo)")


/* Проверка, является ли число четным
        Вариант 1 */
        
        var d = 0
        var sumD = 0
        while d <= 33 {
            d += 1
            if d % 2 == 1 {
                continue
            }
        sumD += d
            print("\(d) .... \(sumD)")
            
        }
        
//    Вариант 2
        
        let aArray = [22, 19, 48, 94, 55, 380, 832, 43, 99, 543]
        for aInt: Int in aArray{
            if aInt % 2 == 0{
                print("\(aInt) even number")
            } else {
                print("\(aInt) odd number")
            }
        }
        
    }
        
}
