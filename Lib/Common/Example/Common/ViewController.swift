//
//  ViewController.swift
//  Common
//
//  Created by CoderZcc on 03/02/2021.
//  Copyright (c) 2021 CoderZcc. All rights reserved.
//

import UIKit
import Common
import CTMediator

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let vc = CTMediator.sharedInstance().jumpToTest(["test": "aaaa"]) {
            self.present(vc, animated: true, completion: nil)
        } else {
            print("初始化失败!!!")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

