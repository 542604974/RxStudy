//
//  DebugLog.swift
//  RxStudy
//
//  Created by dy on 2021/9/3.
//  Copyright © 2021 season. All rights reserved.
//

import Foundation
#if DEBUG
import SwiftPrettyPrint
#endif
/// 仅在Debug模式下打印,我小看了print,这个方法打印出来的效果和print打印出来的效果完全不一样
public func debugLog(_ items: Any..., label: String? = nil, separator: String = " ", terminator: String = "\n") {
    #if DEBUG
    Pretty.prettyPrintDebug(label: label, items, separator: separator)
    #endif
}

/// 这种写法达不到理想效果
public func swiftPrint(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    #if DEBUG
        print(items, separator: separator, terminator: terminator)
    #endif
}
