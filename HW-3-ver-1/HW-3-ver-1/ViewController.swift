//
//  ViewController.swift
//  HW-3-ver-1
//
//  Created by siflaim on 17.05.22.
//

import UIKit

//Массив из кортежей - возвести Int в квадрат.
//Отфильтровать только четные Int.
//Упорядочить по строкам по возрастанию.
//Var x = [(1, “x”), (4, “y”), (6, “a”), (-3, “b”)]

class ViewController: UIViewController {
   
    var x = [(1, "x"), (4, "y"), (6, "a"), (-3, "b")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let hw3 = x.map { (Int(pow(Double($0.0), 2)), $0.1) }.filter { $0.0 % 2 == 0}.sorted{ $0 < $1 }
        print(hw3)
    }
}

