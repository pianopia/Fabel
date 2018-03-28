//
//  FloatingActionButton.swift
//  Fabel
//
//  Created by shota.nakagawa on 2018/03/28.
//  Copyright © 2018年 shota.nakagawa. All rights reserved.
//

import Foundation
import UIKit

// MARK: FabelFlyItemToPointDelegate
public protocol FabelFlyItemToPointDelegate {}

// MARK: UIViewControllerへのDelegate
public extension FabelFlyItemToPointDelegate where Self: UIViewController {
    
    private func setupItemDesign(item: UIView, image: UIImage) {
        
    }
    
    func FlyToFAB(item: UIView, originpoint: CGPoint, endpoint: CGPoint) {
        item.frame.size.width = 30
        item.frame.size.height = 30
        item.backgroundColor = .red
        self.view.addSubview(item)

            
        UIView.animate(withDuration: 1.2, delay: 0, options: .curveEaseInOut, animations: {
            item.frame.origin.x = endpoint.x + 30
            item.frame.origin.y = endpoint.y - 20
            item.frame.origin = endpoint
        }, completion: { (finished: Bool) in
            item.removeFromSuperview()
            UIView.animate(withDuration: 1, animations: {
                let rotation = CGAffineTransform(rotationAngle: CGFloat(M_PI_2))
                let imageView = self.tabBarController?.tabBar.subviews[0]
                imageView?.contentMode = .center
                imageView?.transform = rotation
            })
        })

    }
    
     private func shake() {
        UIView.animate(withDuration: 2, animations: {
            // 対象を揺らすアニメーション
        })
    }
    
}
