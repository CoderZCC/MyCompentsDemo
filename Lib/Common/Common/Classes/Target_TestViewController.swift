//
//  Target_TestViewController.swift
//  CTMediator
//
//  Created by ZCC on 2021/3/2.
//

import Foundation

@objc class Target_TestViewController: NSObject {
    
    @objc func Action_initTestViewController(_ dict: [String: Any]?) -> UIViewController {
        let test = TestViewController()
        test.parm = dict
        return test
    }
}
