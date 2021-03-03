//
//  Test-Extension.swift
//  Common
//
//  Created by ZCC on 2021/3/2.
//

import Foundation
import CTMediator

/**
 //  1. kTestTarget字符串 是 Target_xxx.h 中的 xxx 部分
 //  2. kTestAction 是 Target_xxx.h 中 定义的 Action_xxx 函数名的 xxx 部分
 */
let kTestTarget: String = "TestViewController"
let kTestAction: String = "initTestViewController"

public extension CTMediator {
    
    func jumpToTest(_ parms: [String: Any]?) -> UIViewController? {
        var new = parms
        new?[kCTMediatorParamsKeySwiftTargetModuleName] = "Common"
        return self.performTarget(kTestTarget, action: kTestAction, params: new, shouldCacheTarget: false) as? UIViewController
    }
    
}
