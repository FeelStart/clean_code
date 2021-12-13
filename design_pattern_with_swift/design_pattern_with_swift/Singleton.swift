//
//  Singleton.swift
//  design_pattern_with_swift
//
//  Created by LJF on 2021/12/13.
//  Copyright © 2021 LJF. All rights reserved.
//

import Foundation

/// 单例模式

fileprivate class ApiClient {
    
    /// 单例
    static let shared = ApiClient()
}
