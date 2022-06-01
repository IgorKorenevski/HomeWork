//
//  ViewController.swift
//  HW-5-TP
//
//  Created by siflaim on 1.06.22.
//
//• На экране кружок по центру. Четыре кнопки - вверх, вниз, вправо, влево. При нажатии кнопки кружок перемещается на фиксированное расстояние. За края экрана не выходит, на кнопки не налезает.


import UIKit

class ViewController: UIViewController {
    
    let circleAround = UIView()
    
    let safeAreaWidth = 414
    let safeAreaHeight = 818
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = GetRandomColor()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("iPhone 13 mini (maxX): \(view.frame.maxX)")
        print("iPhone 13 mini (maxY): \(view.frame.maxY)")
        
        print("iPhone 13 mini (midX): \(view.frame.midX)")
        print("iPhone 13 mini (midY): \(view.frame.midY)")
        
        circleAround.backgroundColor = GetRandomColor()
        circleAround.frame.size = CGSize(width: 40, height: 40)
        circleAround.frame.origin = CGPoint(x: view.frame.midX, y: view.frame.midY)
        circleAround.layer.cornerRadius = circleAround.frame.width / 2
        view.addSubview(circleAround)
        
    }
    
    @IBAction func L(_ sender: Any) {
        
        circleAround.backgroundColor = GetRandomColor()
        circleAround.frame.origin = CGPoint(x: 100 - circleAround.frame.width / 2, y: 500 - circleAround.frame.height / 2)
        
    }
    
    @IBAction func T(_ sender: Any) {
        
        circleAround.backgroundColor = GetRandomColor()
        circleAround.frame.origin = CGPoint(x: 200 - circleAround.frame.width / 2, y: 300 - circleAround.frame.height / 2)
        
    }
    
    @IBAction func R(_ sender: Any) {
        
        circleAround.backgroundColor = GetRandomColor()
        circleAround.frame.origin = CGPoint(x: 300 - circleAround.frame.width / 2, y: 500 - circleAround.frame.height / 2)
        
    }
    
    @IBAction func B(_ sender: Any) {
        
        circleAround.backgroundColor = GetRandomColor()
        circleAround.frame.origin = CGPoint(x: 200 - circleAround.frame.width / 2, y: 600 - circleAround.frame.height / 2)
        
    }
    
    func GetRandomColor() -> UIColor {
        
        let red: CGFloat = .random(in: 0...1)
        let green: CGFloat = .random(in: 0...1)
        let blue: CGFloat = .random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
