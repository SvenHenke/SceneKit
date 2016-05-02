//
//  shapetype.swift
//  GeometryFighter
//
//  Created by SvenHenke on 02.05.16.
//  Copyright © 2016 SvenHenke. All rights reserved.
//

import Foundation

// 1
public enum ShapeType:Int {
    
    case Box = 0
    case Sphere
    case Pyramid
    case Torus
    case Capsule
    case Cylinder
    case Cone
    case Tube
    
    // 2
    static func random() -> ShapeType {
        let maxValue = Tube.rawValue
        let rand = arc4random_uniform(UInt32(maxValue+1))
        return ShapeType(rawValue: Int(rand))!
    }
}
