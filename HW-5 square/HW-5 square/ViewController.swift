//
//  ViewController.swift
//  HW-5 square
//
//  Created by siflaim on 30.05.22.
//• По нажатию кнопки экран заполняется разноцветными квадратами с фиксированной стороной. Квадраты не пересекаются.


import UIKit

class ViewController: UIViewController {
    
    let screenSize: CGRect = UIScreen.main.bounds
    let screenScaleFactor: CGFloat = UIScreen.main.scale
    
    var square = UIView ()
    let size = 94
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "brrr")
        backgroundImage.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
        
        print(screenSize, screenScaleFactor)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBAction func tuc(_ sender: Any) {
        viewSquare()
        
        square.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTap)))
        view.addSubview(square)
    }
    
    @objc func didTap() {
        
    }
    
    func viewSquare() {
        for x in 0...Int(view.frame.maxX / CGFloat(size)) {
            for y in 0...Int(view.frame.maxY / CGFloat(size)) {
                
                let square = UIView()
                square.frame = CGRect(x: x * size, y: y * size, width: size, height: size)
                square.backgroundColor = GetRandomColor()
                view.addSubview(square)
            }
        }
    }
}

func GetRandomColor() -> UIColor {
    
    let red: CGFloat = .random(in: 0...1)
    let green: CGFloat = .random(in: 0...1)
    let blue: CGFloat = .random(in: 0...1)
    return UIColor(red: red, green: green, blue: blue, alpha: 1)
}
