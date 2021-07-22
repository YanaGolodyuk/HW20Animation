//
//  UIButtonExt.swift
//  AnimationApp
//
//  Created by admin on 22.07.2021.
//

import UIKit

extension UIButton {
    func pulsate() {

        let pulse = CASpringAnimation(keyPath: "transform.scale")

        pulse.duration = 0.6
        pulse.fromValue = 0.8
        pulse.toValue = 1.2
        pulse.autoreverses = true
        pulse.initialVelocity = 0.5
        pulse.damping = 1

        layer.add(pulse, forKey: nil)
    }
}

