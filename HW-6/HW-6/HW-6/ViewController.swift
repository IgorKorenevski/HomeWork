//
//  ViewController.swift
//  HW-6
//
//  Created by siflaim on 5.06.22.
//
//Сделать перемещение кружочка через enum, кружок не касается стен, при невозможности перемещения в label сообщение об ошибке, при перемещении в label направление перемещения.
// Задать сторону квадрата, по нажатию кнопки заполнить экран разноцветными квадратами с указанной стороной (в центре каждого квадрата label с названием цвета).
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dvLabel: UILabel!
    
    
    let circleAround = UIView()
    
    enum moving {
        case left
        case up
        case down
        case right
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .gray
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        circleAround.backgroundColor = GetRandomColor()
        circleAround.frame.size = CGSize(width: 35, height: 35)
        circleAround.frame.origin = CGPoint(x: view.frame.maxX / 2, y: view.frame.maxY / 2)
        circleAround.layer.cornerRadius = circleAround.frame.width / 2
        view.addSubview(circleAround)
        
        
    }
    
    
    @IBAction func Left(_ sender: Any) {
        movs(but: .left)
    }
    
    @IBAction func Up(_ sender: Any) {
        movs(but: .up)
    }
    
    @IBAction func Down(_ sender: Any) {
        movs(but: .down)
    }
    
    @IBAction func Right(_ sender: Any) {
        movs(but: .right)
    }
    
    func movs(but: moving) {
        switch but {
        case .left:
            if circleAround.frame.origin.x - 35 >= view.frame.minX {
                circleAround.frame.origin.x -= 30
                circleAround.backgroundColor = GetRandomColor()
                dvLabel.text = ("moving left")
            } else {
                dvLabel.text = ("stop")
            }
        case .up:
            if circleAround.frame.origin.y - 80 >= view.frame.minY {
                circleAround.frame.origin.y -= 30
                circleAround.backgroundColor = GetRandomColor()
                dvLabel.text = ("moving up")
            } else {
                dvLabel.text = ("stop")
            }
        case .down:
            if circleAround.frame.origin.y + 150 <= view.frame.maxY {
                circleAround.frame.origin.y += 30
                circleAround.backgroundColor = GetRandomColor()
                dvLabel.text = ("moving down")
            } else {
                dvLabel.text = ("stope")
            }
        case .right:
            if circleAround.frame.origin.x + 50 <= view.frame.maxX {
                circleAround.frame.origin.x += 30
                circleAround.backgroundColor = GetRandomColor()
                dvLabel.text = ("moving right")
            } else {
                dvLabel.text = ("stop")
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

