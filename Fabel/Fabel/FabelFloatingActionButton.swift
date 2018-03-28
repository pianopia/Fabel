//
//  FloatingActionButton.swift
//  Fabel
//
//  Created by shota.nakagawa on 2018/03/28.
//  Copyright © 2018年 shota.nakagawa. All rights reserved.
//

import Foundation
import UIKit

class FabelFloatingActionButton: UIButton {
    
    let startPoint: CGPoint! = nil
    
    //button.backgroundColor = UIColor.red // ボタンの背景色を赤に
    //let image = UIImage(named: "hogeImage") // hogeImageという名前の画像
    //button.setBackgroundImage(image, for: .normal) // 背景に画像をset
    
    // Fly Item to FloatingActionButton
    private func FlyToFAB(item: UIView) {
        
    }
    
    private func shake() {
        UIView.animate(withDuration: 2, animations: {
            // 自身を揺らすアニメーション
        })
    }
    
}

extension FabelFloatingActionButton: UIDynamicAnimatorDelegate {
    
}
