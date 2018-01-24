//
//  UIView+Rotation.swift
//  StarWarsInfo_Swift
//
//  Created by Emanuel Pacheco on 24/01/2018.
//  Copyright © 2018 emanuelandrade. All rights reserved.
//

import UIKit
import UIKit

extension UIView {

    //Start Rotating view
    func startRotating(duration: Double = 1) {
        let kAnimationKey = "rotation"
        
        if self.layer.animation(forKey: kAnimationKey) == nil {
            let animate = CABasicAnimation(keyPath: "transform.rotation")
            animate.duration = duration
            animate.repeatCount = Float.infinity
            
            animate.fromValue = 0.0
            animate.toValue = Float(Double.pi * 2.0)
            self.layer.add(animate, forKey: kAnimationKey)
        }
    }
    
}
