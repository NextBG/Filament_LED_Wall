//
//  LEDArrayView.swift
//  FilaLED-Controller
//
//  Created by Wangyiwei on 2021/3/12.
//

import UIKit

class LEDArrayView: UIView {
    
    let arrayWidth: Int
    let arrayHeight: Int
    var leds = [UIImageView]()
    var ledOn = [Bool]()
    var lastLedOn = [Bool]()
    let gestureRecognizer = UIPanGestureRecognizer()
    
    convenience init(size: CGSize, reversed: Bool = false, frame: CGRect) {
        self.init(w: Int(size.width), h: Int(size.height), reversed: reversed, frame: frame)
    }
    
    init(w: Int, h: Int, reversed: Bool = false, frame: CGRect) {
        self.arrayWidth = w
        self.arrayHeight = h
        super.init(frame: frame)
        setupImages(reversed)
        gestureRecognizer.addTarget(self, action: #selector(onSwipe(_:)))
    }
    
    override init(frame: CGRect) {
        fatalError("Cannot init without size.")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupImages(_ reversed: Bool) {
        //images
        //two bool arrays set false
    }
    
    @objc func onSwipe(_ sender: UIPanGestureRecognizer) {
        switch sender.state {
        case .began:
            <#code#>
        case .changed:
            print(
                sender.location(in: self).x / bounds.width,
                sender.location(in: self).y / bounds.height
            )
        default:
            lastLedOn = ledOn.copy()
        }
    }
}
