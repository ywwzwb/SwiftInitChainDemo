//: Playground - noun: a place where people can play

import Cocoa

class RootClass {
    init() {
    }
    required init(value : Int) {
        
    }
    convenience init(value2: Int) {
        self.init()
    }
}
class ChildClass: RootClass{
    // 子类可以将指定构造器声明为必要构造器
    required override init() {
        super.init()
    }
    // 如果实现了某一个构造函数, 那么必须要实现所有的必要构造函数
    required init(value : Int) {
        super.init(value: value)
    }
}
class Child2Class: RootClass {
    // 可以将遍历构造器继承为指定构造器
    init(value2: Int) {
//        super.init(value2: 1) // 必须要调用父类的指定构造器, 不能调用父类的便利构造器
        super.init()
    }
    required init(value : Int) {
        super.init(value: value)
    }
    // 可以将指定构造器即成为遍历构造器
    convenience override init() {
//        super.init(value2: 2)// 便利构造器必须要调用本类的其他指定/必要构造器
        self.init(value2: 2)
    }
}
class Child3Class: RootClass {
    required init(value2: Int) {
        super.init()
    }
    required init(value : Int) {
        super.init(value: value)
    }
}
