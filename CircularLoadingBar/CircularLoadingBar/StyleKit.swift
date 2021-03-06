//
//  StyleKit.swift
//  CircularLoadingBar
//
//  Created by Gerardo Blanco García on 4/6/16.
//  Copyright (c) 2016 . All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

open class StyleKit : NSObject {

    //// Cache

    fileprivate struct Cache {
        static let topColor: UIColor = UIColor(red: 0.000, green: 0.776, blue: 1.000, alpha: 1.000)
        static let bottomColor: UIColor = UIColor(red: 0.000, green: 0.447, blue: 1.000, alpha: 1.000)
        static let progressBarGradient: CGGradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKit.topColor.cgColor, StyleKit.bottomColor.cgColor] as CFArray, locations: [0, 1])!
    }

    //// Colors

    open class var topColor: UIColor { return Cache.topColor }
    open class var bottomColor: UIColor { return Cache.bottomColor }

    //// Gradients

    open class var progressBarGradient: CGGradient { return Cache.progressBarGradient }

    //// Drawing Methods

    open class func drawCircularLoadingBar(angle: CGFloat = 90) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let backgroundColor = UIColor(red: 0.961, green: 0.961, blue: 0.961, alpha: 1.000)

        //// Variable Declarations
        let startAngle: CGFloat = angle * -1 + 135
        let endAngle: CGFloat = startAngle - 90

        //// Background Drawing
        context?.saveGState()
        context?.translateBy(x: 32, y: 32)

        let backgroundPath = UIBezierPath()
        backgroundPath.move(to: CGPoint(x: 0, y: -24))
        backgroundPath.addCurve(to: CGPoint(x: -12.38, y: -20.57), controlPoint1: CGPoint(x: -4.53, y: -24), controlPoint2: CGPoint(x: -8.76, y: -22.75))
        backgroundPath.addCurve(to: CGPoint(x: -24, y: 0), controlPoint1: CGPoint(x: -19.34, y: -16.37), controlPoint2: CGPoint(x: -24, y: -8.73))
        backgroundPath.addCurve(to: CGPoint(x: -0, y: 24), controlPoint1: CGPoint(x: -24, y: 13.25), controlPoint2: CGPoint(x: -13.25, y: 24))
        backgroundPath.addCurve(to: CGPoint(x: 24, y: 0), controlPoint1: CGPoint(x: 13.25, y: 24), controlPoint2: CGPoint(x: 24, y: 13.25))
        backgroundPath.addCurve(to: CGPoint(x: 0, y: -24), controlPoint1: CGPoint(x: 24, y: -13.25), controlPoint2: CGPoint(x: 13.25, y: -24))
        backgroundPath.close()
        backgroundPath.move(to: CGPoint(x: 32, y: 0))
        backgroundPath.addCurve(to: CGPoint(x: -0, y: 32), controlPoint1: CGPoint(x: 32, y: 17.67), controlPoint2: CGPoint(x: 17.67, y: 32))
        backgroundPath.addCurve(to: CGPoint(x: -32, y: 0), controlPoint1: CGPoint(x: -17.67, y: 32), controlPoint2: CGPoint(x: -32, y: 17.67))
        backgroundPath.addCurve(to: CGPoint(x: -19.33, y: -25.5), controlPoint1: CGPoint(x: -32, y: -10.41), controlPoint2: CGPoint(x: -27.03, y: -19.66))
        backgroundPath.addCurve(to: CGPoint(x: 0, y: -32), controlPoint1: CGPoint(x: -13.96, y: -29.58), controlPoint2: CGPoint(x: -7.26, y: -32))
        backgroundPath.addCurve(to: CGPoint(x: 32, y: 0), controlPoint1: CGPoint(x: 17.67, y: -32), controlPoint2: CGPoint(x: 32, y: -17.67))
        backgroundPath.close()
        backgroundColor.setFill()
        backgroundPath.fill()

        context?.restoreGState()


        //// Progress Bar
        context?.saveGState()
        context?.beginTransparencyLayer(auxiliaryInfo: nil)

        //// Clip Mask Path
        let maskPathRect = CGRect(x: 0, y: 0, width: 64, height: 64)
        let maskPathPath = UIBezierPath()
        maskPathPath.addArc(withCenter: CGPoint(x: maskPathRect.midX, y: maskPathRect.midY), radius: maskPathRect.width / 2, startAngle: -startAngle * CGFloat(Double.pi)/180, endAngle: -endAngle * CGFloat(Double.pi)/180, clockwise: true)
        maskPathPath.addLine(to: CGPoint(x: maskPathRect.midX, y: maskPathRect.midY))
        maskPathPath.close()

        maskPathPath.addClip()


        //// Circle Path Drawing
        context?.saveGState()
        context?.translateBy(x: 32, y: 32)

        let circlePathPath = UIBezierPath()
        circlePathPath.move(to: CGPoint(x: 0, y: -24))
        circlePathPath.addCurve(to: CGPoint(x: -12.38, y: -20.57), controlPoint1: CGPoint(x: -4.53, y: -24), controlPoint2: CGPoint(x: -8.76, y: -22.75))
        circlePathPath.addCurve(to: CGPoint(x: -24, y: 0), controlPoint1: CGPoint(x: -19.34, y: -16.37), controlPoint2: CGPoint(x: -24, y: -8.73))
        circlePathPath.addCurve(to: CGPoint(x: -0, y: 24), controlPoint1: CGPoint(x: -24, y: 13.25), controlPoint2: CGPoint(x: -13.25, y: 24))
        circlePathPath.addCurve(to: CGPoint(x: 24, y: 0), controlPoint1: CGPoint(x: 13.25, y: 24), controlPoint2: CGPoint(x: 24, y: 13.25))
        circlePathPath.addCurve(to: CGPoint(x: 0, y: -24), controlPoint1: CGPoint(x: 24, y: -13.25), controlPoint2: CGPoint(x: 13.25, y: -24))
        circlePathPath.close()
        circlePathPath.move(to: CGPoint(x: 32, y: 0))
        circlePathPath.addCurve(to: CGPoint(x: -0, y: 32), controlPoint1: CGPoint(x: 32, y: 17.67), controlPoint2: CGPoint(x: 17.67, y: 32))
        circlePathPath.addCurve(to: CGPoint(x: -32, y: 0), controlPoint1: CGPoint(x: -17.67, y: 32), controlPoint2: CGPoint(x: -32, y: 17.67))
        circlePathPath.addCurve(to: CGPoint(x: -19.33, y: -25.5), controlPoint1: CGPoint(x: -32, y: -10.41), controlPoint2: CGPoint(x: -27.03, y: -19.66))
        circlePathPath.addCurve(to: CGPoint(x: 0, y: -32), controlPoint1: CGPoint(x: -13.96, y: -29.58), controlPoint2: CGPoint(x: -7.26, y: -32))
        circlePathPath.addCurve(to: CGPoint(x: 32, y: 0), controlPoint1: CGPoint(x: 17.67, y: -32), controlPoint2: CGPoint(x: 32, y: -17.67))
        circlePathPath.close()
        context?.saveGState()
        circlePathPath.addClip()
        context?.drawLinearGradient(StyleKit.progressBarGradient, start: CGPoint(x: -0, y: -32), end: CGPoint(x: 0, y: 32), options: CGGradientDrawingOptions())
        context?.restoreGState()

        context?.restoreGState()


        context?.endTransparencyLayer()
        context?.restoreGState()
    }

}
