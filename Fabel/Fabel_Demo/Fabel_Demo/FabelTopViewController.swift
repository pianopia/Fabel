//
//  FabelTopViewContoller.swift
//  Fabel
//
//  Created by shota.nakagawa on 2018/03/28.
//  Copyright © 2018年 shota.nakagawa. All rights reserved.
//

import Foundation
import UIKit
import Fabel

class FabelTopViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func onButton(_ sender: Any) {
        let item = UIView()
        item.backgroundColor = UIColor(patternImage: UIImage(named: "Fabel_Icon")!)
        FlyToFAB(item: UIView(), originpoint: self.button.frame.origin, endpoint: (self.tabBarController?.tabBar.center)!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension FabelTopViewController: FabelFlyItemToPointDelegate {}
