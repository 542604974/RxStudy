//
//  NSObject+Extension.swift
//  RxStudy
//
//  Created by season on 2021/5/24.
//  Copyright © 2021 season. All rights reserved.
//

import Foundation

// MARK: - 获取类的字符串名称
extension NSObject {
    
    /// 对象获取类的字符串名称
    public var className: String {
        return runtimeType.className
    }
    
    /// 类获取类的字符串名称
    public static var className: String {
        return String(describing: self)
    }
    
    /// NSObject对象获取类型
    public var runtimeType: NSObject.Type {
        return type(of: self)
    }
    
    /// 这是一个例子函数
    /// - Parameter arg:
    /// - Parameter argument: 传入Int类型的参数
    /// - Parameter num: <#num description#>
    /// - Returns: 返回Int类型的参数
    public func afunction(argument: Int, num: Int) -> Int {
        return argument
    }
}
