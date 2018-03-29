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
    @IBOutlet weak var button2: UIButton!
    
    @IBAction func onButton(_ sender: Any) {
        let item = createItemImage()
        flyToFAB(item: item, originpoint: self.button.center, endpoint: (self.tabBarController?.tabBar.center)!)
    }
    
    @IBAction func onButton2(_ sender: Any) {
        let item = createItemImage()
        flyToFAB(item: item, originpoint: self.button2.center , endpoint: (self.tabBarController?.tabBar.center)!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func createItem() -> UIView {
        let item = UIView()
        item.frame.size.width = 30
        item.frame.size.height = 30
        item.backgroundColor = .red
        item.layer.cornerRadius = 15
        return item
    }
    
    private func createItemImage() -> UIImageView {
        let item = UIImageView.init(image: UIImage.init(named: "Fabel_Icon"))
        item.frame.size.width = 30
        item.frame.size.height = 30
        item.backgroundColor = .red
        return item

    }
    
}

extension FabelTopViewController: FabelFlyItemToPointDelegate {}
