//
//  ViewController.swift
//  HomeWork_main
//
//  Created by siflaim on 9.05.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        one
        one.adding(3, 5)
        one.adding(5.6, 20.4)
        one.subtract(10, 13)
        one.subtract(11.5, 15.2)
        one.multip(23, 25)
        one.multip(22.66, 35.66)
        one.division(11, 22)
        one.division(54.3, 25.8)
        one.overload(4, 8)
        one.overload(88.5, 35.7)
        one.overload(11, 12, 13)
        
//        two
        print(two.sumNum(2358))
        two.sumNum2(5436)

//      three
        
        three.comparision("абв", "ввш")
        
//      four
        
        four.crashing(10)
        
//      five
        
        five.inDegree(9.3)
        
//      six
        
        six.fact(8)
        
        six.fact2(8)
        
        
        
    }
}
// 1) Универсальные функции сложения, вычитания, умножения и деления (перегрузка функций).
    
    class one{
        
        static func adding(_ num1: Int,_ num2: Int){
            let sumAdd = num1 + num2
            print(sumAdd)
        }
        
        static func adding(_ num1: Double,_ num2: Double){
            let sumAdd = num1 + num2
            print(sumAdd)
        }
        
        
        static func subtract(_ num1: Int, _ num2: Int){
            let sumSub = num1 - num2
            print(sumSub)
        }
        
        static func subtract(_ num1: Double, _ num2: Double){
            let sumSub = num1 - num2
            print(sumSub)
        }
        
        
        
        static func multip(_ num1: Int, _ num2: Int){
            let sumSub = num1 * num2
            print(sumSub)
        }
        
        static func multip(_ num1: Double, _ num2: Double){
            let sumSub = num1 * num2
            print(sumSub)
        }
        
        
        
        static func division(_ num1: Int,_ num2: Int){
            let sumDiv = num1 / num2
            print(sumDiv)
        }
        
        static func division(_ num1: Double,_ num2: Double){
            let sumDiv = num1 / num2
            print(sumDiv)
        }
    
        
        
        static func overload(_ num1: Int,_ num2: Int){
            print(num1 + num2)
        }
        
        static func overload(_ num1: Double,_ num2: Double){
            print(num1 - num2)
        }
        
        static func overload(_ num1: Int,_ num2: Int,_ num3: Int){
            print(num1 * num2 * num3)
        }
    }
   
// 2) Вычислить сумму цифр четырезначного числа.
    
    class two{
        
// Вариант 1
        
        static func sumNum(_ num: Int) -> Int {
            var num = num
            var sum = 0
            while num > 0 {
                sum += num % 10
                num /= 10
            }
            return sum
        }
        
// Вариант 2
        
        static func sumNum2(_ num: Int) {
            let sum = String(num).compactMap{ Int(String($0)) }.reduce(0,+)
            print(sum)
        }
        
    }
    
// Задание 3

    class three{
        static func comparision(_ str1: String,_ str2: String) {
            if str1 > str2 {
                print(str1 + " > " + str2)
            } else if str2 > str1 {
                print(str1 + " < " + str2)
            } else {
                print(str1 + " = " + str2)
            }
        }
    }

//     Задание 4.
    
    class  four{
        
        static func crashing(_ stop: Int) {
            while stop < Int.min {
                four.crashing(0)
            }
        }
    }

// Задание 5. Функция возведения в степень с дефолтным параметром.
    
    class five{
        static func inDegree(_ num: Double, degr: Double = 2){
            let de = Int(pow(Double(num), (degr)))
            let Degree = Int(degr)
            print("\(num) * \(Degree) = \(de)")
        }
    }

// Задание 6. Функция вычисления факториала числа.
    
    class six{

//    Вариант с while
        
        static func fact(_ a: Int) {
            var fact = 1
            var i = 1
            while (i<=a){
                fact *= i
                i += 1
            print("Ищу factorial: \(fact)")
            }
        }
        
//    Вариант без while
        
        static func fact2(_ a: Int) {
            var b = 1
            for c in 1...a{
                b *= c
                print("number: \(a) factorial: \(b)")
            }
        }
}
        
