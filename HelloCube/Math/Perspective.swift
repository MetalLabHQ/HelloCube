//
//  Perspective.swift
//  HelloCube
//
//  Created by GH on 11/7/25.
//

import simd

/// 透视投影矩阵
func perspective(aspect: Float, fovy: Float, near: Float, far: Float) -> float4x4 {
    let yScale = 1 / tan(fovy * 0.5)
    let xScale = yScale / aspect
    let zRange = far - near
    let zScale = far / zRange
    let wzScale = zScale * -near
    
    return float4x4(
        SIMD4<Float>(xScale, 0,      0,  0),
        SIMD4<Float>(0,      yScale, 0,  0),
        SIMD4<Float>(0,      0,      zScale, 1),
        SIMD4<Float>(0,      0,      wzScale, 0)
    )
}
