//
//  Adapter.swift
//  design_pattern_with_swift
//
//  Created by LJF on 2021/12/13.
//  Copyright © 2021 LJF. All rights reserved.
//

import Foundation
import EventKit

/// 适配器模式
/// [swift-adapter-design-pattern](https://theswiftdev.com/swift-adapter-design-pattern/)

/// 事件
fileprivate protocol Event {
    /// 标题
    var title: String { get }
    
    /// 开始时间
    var startDate: String { get }
    
    /// 结束时间
    var endDate: String { get }
}

/// 事件适配器
fileprivate class EventAdapter {
    
    /// 时间格式
    private lazy var dateFormatter: DateFormatter = {
        let format = DateFormatter()
        format.dateFormat = "yyyy. MM. dd. HH:mm"
        return format
    }()
    
    private let event: EKEvent
    
    init(event: EKEvent) {
        self.event = event
    }
    
}

/// 事件适配器的实现
extension EventAdapter: Event {
    
    var title: String {
        return self.event.title
    }
    
    var startDate: String {
        return self.dateFormatter.string(from: event.startDate)
    }
    
    var endDate: String {
        return self.dateFormatter.string(from: event.endDate)
    }
}
