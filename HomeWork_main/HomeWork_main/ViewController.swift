//
//  ViewController.swift
//  HomeWork_main
//
//  Created by siflaim on 9.05.22.
//

/*  HomeWork-2:
 
 1) Универсальные функции сложения, вычитания, умножения и деления (перегрузка функций).
 2) Вычислить сумму цифр четырезначного числа.
 3) Функция сравнения строк - "авб" больше "ввш".
 4) Циклический вызов функций - поломать приложение.
 5) Функция возведения в степень с дефолтным параметром.
 6) Функция вычисления факториала числа.
 */

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
// 1)
        arithmetic.adding(num1: 5, num2: 25.5)
        arithmetic.subtract(86.21, 53.2103)
        print(arithmetic.multiplication(345.2, 99321, 32.92))
        arithmetic.division(num1: 993, num2: 23)
        arithmetic.overload(22, 23)
        arithmetic.overload(445.22, 323.5563)
        arithmetic.overload(22, 334, num3: 2)
    
// 2)
        
        print(arithmetic.sumNum(2358))
        arithmetic.sumNum2(5629)

// 3)
        old.comparision("абв", "ввш")
    
// 4) crash
//       four.crashing(10)
            
            
//5)
        print(five.inDegree(num: 2, degr: 2))
        
//6
        print(six.factorial(6))
        
}

// 1) Универсальные функции сложения, вычитания, умножения и деления (перегрузка функций).

    // Сложение:
    class arithmetic{

    static func adding(num1: Int, num2: Double){
        let sumAdd = num1 + Int(num2)
        print(sumAdd)
    }

// Вычитание:

    static func subtract(_ num1: Double, _ num2: Double){
        let sumSub = num1 - num2
        print(sumSub)
    }

// Умножение:

    static func multiplication(_ num1: Double, _ num2: Int, _ num3: Double) -> Double{
        return num1 * Double(num2) * num3
    }

// Деление:

    static func division(num1: Int, num2: Int){
        let sumDiv = num1 / num2
        print(sumDiv)
    }

// Перегрузка функций

    static func overload(_ num1: Int,_ num2: Int){
        print(num1 + num2)
    }

    static func overload(_ num1: Double,_ num2: Double){
        print(num1 - num2)
    }

    static func overload(_ num1: Int,_ num2: Int, num3: Int){
        print(num1 * num2 * num3)
    }

// 2) Вычислить сумму цифр четырезначного числа.

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
class old{
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
//  Задание 4.
    
    class  four{
//        единственное, что смог найти, но так и не понял, работает ли
        
        static func crashing(_ stop: Int) {
            while stop < Int.min {
                four.crashing(0)
            }
        }
    }
// Задание 5.  Функция возведения в степень с дефолтным параметром.
    
    class five{
        static func inDegree(num: Double,  degr: Double) -> Double{
            guard num > 0, degr > 0 else { return 0 }
            let Degree = pow(num, degr)
            return Degree
        }
    }
// Задание 6. Функция вычисления факториала числа.
    
    class six{
        static func factorial(_ fact: Int) -> Int{
            if fact == 0 {
                return 1
            }
            return fact * factorial(fact - 1)
        }

    }

}

