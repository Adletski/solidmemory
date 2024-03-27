//
//  Task1.swift
//  solidpractice
//
//  Created by Adlet Zhantassov on 27.03.2024.
//

import UIKit

class Task1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

}

// Single responsobility principle 1. какой принцип нарушает данный код
class NetworkManager {
    func fetchData(url: URL) {
        // Запрос к API
    }

    func updateUI() {
        // обновляет пользовательский интерфейс
    }
}
// в данном случае невтему у нас updateUI его можно убрать отсюда

// Open closed principle 1. какой принцип нарушает данный код
protocol Animal {
    func makeSound()
}

class Cat: Animal {
    let name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        print("meow")
    }
}

class Dog: Animal {
    let name: String

    init(name: String) {
        self.name = name
    }
    
    func makeSound() {
        print("gav")
    }
}

// 2. какой принцип нарушает данный код

protocol Shapes {
    func printSize()
}

struct Circle: Shapes {
    let radius: CGFloat
    
    func printSize() {
        let diameter = radius * 2
        print(CGSize(width: diameter, height: diameter))
    }
}

struct Rectangle: Shapes {
    let width: CGFloat
    let height: CGFloat
    
    func printSize() {
        print(CGSize(width: width, height: height))
    }
}

class SizePrinter {
    
    let shape: Shapes
    
    init(shape: Shapes) {
        self.shape = shape
    }
    
    func getSize() {
        shape.printSize()
    }
}

// Liskov substituion principle

// Interface segregation principle 1. какой принцип нарушет данный код?

protocol Worker {
    func work()
}

protocol Eatable {
    func eat()
}

class Robot: Worker, Eatable{
    func work() {
        // Робот работает
    }
    
    func eat() {
        // eating
    }
}
