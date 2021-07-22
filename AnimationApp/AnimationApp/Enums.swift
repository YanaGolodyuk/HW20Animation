//
//  Enums.swift
//  AnimationApp
//
//  Created by admin on 22.07.2021.
//

import Foundation

enum AnimationType: String {
    case shake
    case pop
    case morph
    case squeeze
    case wobble
    case swing
    case flipX
    case flipY
    case fall
    case squeezeLeft
    case squeezeRight
    case squeezeDown
    case squeezeUp
    case slideLeft
    case slideRight
    case slideDown
    case slideUp
    case fadeIn
    case fadeOut
    case fadeInLeft
    case fadeInRight
    case fadeInDown
    case fadeInUp
    case zoomIn
    case zoomOut
    case flash

    static func random<G: RandomNumberGenerator>(using generator: inout G) -> AnimationType {
        return AnimationType.allCases.randomElement(using: &generator)!
    }
    static func random() -> AnimationType {
        var g = SystemRandomNumberGenerator()
        return AnimationType.random(using: &g)
    }
}

enum Curve: String {
    case spring
    case linear
    case easeIn
    case easeOut
    case easeInOut

    static func random<G: RandomNumberGenerator>(using generator: inout G) -> Curve {
        return Curve.allCases.randomElement(using: &generator)!
    }
    static func random() -> Curve {
        var g = SystemRandomNumberGenerator()
        return Curve.random(using: &g)
    }
}

extension AnimationType: CaseIterable { }

extension Curve: CaseIterable { }
