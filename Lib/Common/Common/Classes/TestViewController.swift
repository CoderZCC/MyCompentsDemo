//
//  TestViewController.swift
//  Common
//
//  Created by ZCC on 2021/3/2.
//

import UIKit

class TestViewController: UIViewController {
    
    var parm: [String: Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.darkGray
        let textL = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 0))
        textL.text = "\(self.parm ?? [:])"
        self.view.addSubview(textL)
        textL.center = self.view.center
        textL.numberOfLines = 0
        textL.sizeToFit()
        
        let imgV = UIImageView(frame: CGRect(x: (self.view.bounds.width - 200) / 2, y: textL.frame.minY - 220, width: 200, height: 200))
        imgV.image = UIImage.init(bundleImgName: "appIcon")
        self.view.addSubview(imgV)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension UIImage {
    
    convenience init? (bundleImgName: String?) {
        guard let bundleImgName = bundleImgName else { return nil }
        let currentBundle = Bundle.init(for: TestViewController.self)
        let currentFramewordName = currentBundle.bundlePath.components(separatedBy: "/").last?.components(separatedBy: ".").first ?? ""
        let name = "\(currentFramewordName).bundle"
        if #available(iOS 13.0, *) {
            self.init(named: "\(name)/\(bundleImgName)", in: currentBundle, with: nil)
        } else {
            let imgPath = currentBundle.path(forResource: "\(bundleImgName)@3x.png", ofType: nil, inDirectory: name) ?? ""
            self.init(contentsOfFile: imgPath)
        }
    }
}
