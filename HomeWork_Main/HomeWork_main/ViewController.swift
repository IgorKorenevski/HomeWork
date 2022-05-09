//
//  ViewController.swift
//  HomeWork_1
//
//  Created by siflaim on 6.05.22.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
        var age = 23
        override func viewDidLoad() {
            super.viewDidLoad()
        switch age {
        case Int.min...0:
            print("incorrect age")
        case 0...18:
            print("not for you")
        case 18...21:
            print("come In")
        case 22...Int.max:
            print("WhatThatFuck")
        default:
            print("come In")
        }
    }


}

