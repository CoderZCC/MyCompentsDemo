//
//  ViewController.swift
//  HmmToCProject
//
//  Created by ZCC on 2021/3/2.
//

import UIKit
import CTMediator
import Common


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGray
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let vc = CTMediator.sharedInstance().jumpToTest(["a": "b"]) {
            self.present(vc, animated: true, completion: nil)
        }
    }

}

