//
//  ViewController.swift
//  HW-5 cats
//
//  Created by siflaim on 29.05.22.
//Дедлайн: 30.05.2022
//• Функция Random - самостоятельно, найти и изучить применение.
//• Игрушка для котиков - появление разноцветного кружочка, по тапу исчезает и появляется в новом месте (кодом).
//• По нажатию кнопки экран заполняется разноцветными квадратами с фиксированной стороной. Квадраты не пересекаются.
//• На экране кружок по центру. Четыре кнопки - вверх, вниз, вправо, влево. При нажатии кнопки кружок перемещается на фиксированное расстояние. За края экрана не выходит, на кнопки не налезает.

import UIKit

class ViewController: UIViewController {
    
    let screenSize: CGRect = UIScreen.main.bounds
    let screenScaleFactor: CGFloat = UIScreen.main.scale
    
    var myCatView = UIView ()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "cattt")
        backgroundImage.contentMode = .scaleAspectFill
        view.insertSubview(backgroundImage, at: 0)
        
        print(screenSize, screenScaleFactor)
        
        myCatView.backgroundColor = .darkGray
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

        let randomX = CGFloat.random(in: 0...375)
        let randomY = CGFloat.random(in: 0...812)
        
        
        myCatView.frame = CGRect(x: randomX, y: randomY, width: 37, height: 44)
        myCatView.bounds.origin = .init(x: 10, y: 30)
        myCatView.layer.cornerRadius = 20
        myCatView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTap)))
        view.addSubview(myCatView)
        
    }
    @objc func didTap() {
        myCatView.backgroundColor = GetRandomColor()
        myCatView.frame = GetRandom()
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func GetRandomColor() -> UIColor {
        
        let red: CGFloat = .random(in: 0...1)
        let green: CGFloat = .random(in: 0...1)
        let blue: CGFloat = .random(in: 0...1)
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    func GetRandom() -> CGRect {
        let x = CGFloat.random(in: 0 ... 375)
        let y = CGFloat.random(in: 0 ... 728)
        let width = CGFloat.random(in: 10 ... 100)
        let height = CGFloat.random(in: 10 ... 100)
        return CGRect(x: x, y: y, width: width, height: height)
    }

}



