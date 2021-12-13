//
//  SimpleFactory.swift
//  design_pattern_with_swift
//
//  Created by LJF on 2021/12/13.
//  Copyright © 2021 LJF. All rights reserved.
//

import Foundation

/// 简单工厂模式
/// [swift-simple-factory-design-pattern](https://theswiftdev.com/swift-simple-factory-design-pattern/)

fileprivate protocol Environment {
    var identifier: String { get }
}

fileprivate class DevEnvironment: Environment {
    var identifier: String { "dev" }
}

fileprivate class LiveEnvironment: Environment {
    var identifier: String { "live" }
}

fileprivate class EnvironmentFactory {
    
    enum EnvType {
        case dev, live
    }
    
    func create(_ type: EnvType) -> Environment {
        switch type {
        case .dev:
            return DevEnvironment()
        default:
            return LiveEnvironment()
        }
    }
}
