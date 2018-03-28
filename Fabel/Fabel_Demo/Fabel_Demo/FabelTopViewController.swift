//
//  FabelTopViewContoller.swift
//  Fabel
//
//  Created by shota.nakagawa on 2018/03/28.
//  Copyright © 2018年 shota.nakagawa. All rights reserved.
//

import Foundation
import UIKit

class FabelTopViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// シングルタップ時に実行される
    @objc func tapSingle(_ sender: AnyObject) {
        NSLog("location:\(sender.accessibilityActivationPoint)")
    }
}
