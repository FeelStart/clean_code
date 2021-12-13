//
//  FactoryMethod.swift
//  design_pattern_with_swift
//
//  Created by LJF on 2021/12/13.
//  Copyright © 2021 LJF. All rights reserved.
//

import Foundation

/// 工厂方法
/// [Factory_Method](https://levelup.gitconnected.com/factory-method-pattern-in-swift-1f1b73488072)
/// 工厂方法是创建模式

fileprivate protocol Creator {
    func factoryMethod() -> Product
}

fileprivate class ConcreteCreator: Creator {
    func factoryMethod() -> Product {
        ConcreteProduct()
    }
}

fileprivate protocol Product {}
fileprivate class ConcreteProduct: Product {}
