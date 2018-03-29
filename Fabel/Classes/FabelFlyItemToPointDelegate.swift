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
    
    // UIViewのItemを
    func flyToFAB(item: UIView, originpoint: CGPoint, endpoint: CGPoint) {
        
        item.frame.origin.x = originpoint.x
        item.frame.origin.y = originpoint.y
        self.view.addSubview(item)
        
        let jumpHeight: CGFloat = 100.0
        
        CATransaction.begin()
        // CAKeyframeAnimationオブジェクトを生成
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        animation.duration = 1.0
        
        let path = CGMutablePath()
        path.move(to: CGPoint(x: originpoint.x, y: originpoint.y))
        path.addCurve(to: endpoint, control1: CGPoint(x: originpoint.x - jumpHeight/2, y: originpoint.y - jumpHeight), control2: CGPoint(x: endpoint.x - jumpHeight/2, y: originpoint.y - jumpHeight))
        animation.path = path
        
        // Callback function
        CATransaction.setCompletionBlock {
            item.removeFromSuperview()
        }
        
        item.layer.add(animation, forKey: nil)
        CATransaction.commit()
        
        item.layer.animation(forKey: "position")
    }
    
    // UIImageViewのItemを使用
    func flyToFAB(item: UIImageView, originpoint: CGPoint, endpoint: CGPoint) {
        
        item.frame.origin.x = originpoint.x
        item.frame.origin.y = originpoint.y
        self.view.addSubview(item)
        
        let jumpHeight: CGFloat = 100.0
        
        CATransaction.begin()
        // CAKeyframeAnimationオブジェクトを生成
        let animation = CAKeyframeAnimation(keyPath: "position")
        animation.fillMode = kCAFillModeForwards
        animation.isRemovedOnCompletion = false
        animation.duration = 1.0
        
        let path = CGMutablePath()
        path.move(to: CGPoint(x: originpoint.x, y: originpoint.y))
        path.addCurve(to: endpoint, control1: CGPoint(x: originpoint.x - jumpHeight/2, y: originpoint.y - jumpHeight), control2: CGPoint(x: endpoint.x - jumpHeight/2, y: originpoint.y - jumpHeight))
        animation.path = path
        
        // Callback function
        CATransaction.setCompletionBlock {
            item.removeFromSuperview()
            self.shake(item: self.tabBarController?.tabBar.subviews[1].subviews.first as! UIImageView)
        }
        
        item.layer.add(animation, forKey: nil)
        CATransaction.commit()
        
        item.layer.animation(forKey: "position")
    }
    
    private func shake(item: UIImageView) {
        CATransaction.begin()
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 3
        animation.fromValue = [item.center.x, item.center.y]
        animation.toValue = [item.center.x - 5, item.center.y]
        
        item.layer.add(animation, forKey: nil)
        CATransaction.commit()
        
        item.layer.animation(forKey: "position")
    }
}
