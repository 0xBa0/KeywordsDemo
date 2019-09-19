//
//  Person.swift
//  KeywordsFramework
//
//  Created by Zack.Zhang on 9/19/19.
//  Copyright © 2019 Zack.Zhang. All rights reserved.
//

import UIKit

//open修饰类: 不同project可被访问，可被继承
open class Person: NSObject {
    open var name: String   
    public init(name: String) {
        self.name = name
    }
    //open修饰function：不同project可被访问，可被子类重写
    open func run(){
        print(self.name + "run")
    }
}

public class Chinese: Person {
    public override init(name: String) {
        super.init(name: name)
    }
    public override func run() {
        print(self.name + " run fast")
    }
}

//public修饰类: 不同project可被访问，只能在同一个project下呗继承
public class Animal: NSObject {
    public var name: String
    public init(name: String){
        self.name = name
    }
    //public修饰类: 不同project可被访问，只能在同一个project下被重写，可在ViewController的Dog类下查看到报错信息
    public func eat(){
        print(self.name + " eat something")
    }
}

public class Cat: Animal {
    public override init(name: String) {
        super.init(name: name)
    }
    public override func eat() {
        print(self.name + " eat cat's food")
    }
}
