//
//  ViewController.swift
//  KeywordsDemo
//
//  Created by Zack.Zhang on 9/19/19.
//  Copyright © 2019 Zack.Zhang. All rights reserved.
//

import UIKit
import KeywordsFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //open修饰类
        let person = Person(name: "Someone")
        print(person.name)
        person.run()
        
        let zack = Chinese(name: "Zack")
        print(zack.name)
        zack.run()
        
        let tom = American(name: "Tom")
        print(tom.name)
        tom.run()
        
        //public修饰类
        let animal = Animal(name: "Unknown")
        print(animal.name)
        animal.eat()
        
        let comet = Cat(name: "Comet")
        print(comet.name)
        comet.eat()
        
        //关键字：private
        let jenney = Japanese(name: "Jenney", age: 10, weight: 80)
        jenney.printAge()
        jenney.countAgeInNextYear()
        
        //关键字：fileprivate 同个文件下即可访问
        print(jenney.weight)
        jenney.weight = 60.0
        jenney.printWeight()
        

    }


}

//open修饰的类，可跨project被继承，被访问
class American: Person {
    override init(name: String) {
        super.init(name: name)
    }
    override func run() {
        print(self.name + " can't run")
    }
}


class Japanese: Person {
    //private修饰属性: 私有 只能在同个类和该类的extension下访问
    private let age: Int
    fileprivate var weight: Float
    init(name: String, age: Int, weight: Float) {
        self.age = age
        self.weight = weight
        super.init(name: name)
    }
    
    //private修饰function: 私有 只能在同个类和该类的extension下访问
    func printAge() {
        self.m_printAge()
    }
    
    private func m_printAge() {
        print("\(self.name)'s age is \(self.age)")
    }
    
    fileprivate func printWeight() {
        print("\(self.name)'s weight is \(self.weight)")
    }
}

//不同的文件下，extension可以访问私有属性
extension Japanese {
    func countAgeInNextYear() {
        let age = self.age + 1
        print("\(self.name)'s age is \(age) in next year")
    }
}


/*
//Cannot inherit from non-open class 'Animal' outside of its defining module
class Dog: Animal {
    override init(name: String) {
        super.init(name: name)
    }
    //Overriding non-open instance method outside of its defining module
    override func eat() {
        print(self.name + " eat dog's food")
    }
}
*/
