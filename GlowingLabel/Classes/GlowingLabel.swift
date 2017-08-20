//
//  GlowingLabel.swift
//
//  Created by Chanchal Raj on 08/20/2017.
//  Copyright (c) 2017 Chanchal Raj. All rights reserved.
//

import UIKit
import QuartzCore

//@IBDesignable
class GlowingLabel: UILabel {

	@IBInspectable
	var blurColor :UIColor = UIColor(red: 104.0,green: 248.0,blue: 0,alpha: 0.7){
		didSet { setNeedsDisplay() }
	}

	@IBInspectable
	var glowSize :CGFloat = 25.0


	override func drawText(in rect: CGRect) {

		if let ctx = UIGraphicsGetCurrentContext() {
			ctx.setShadow(offset: CGSize(width: 0, height: 0)
				, blur: self.glowSize
				, color: self.blurColor.cgColor)

			ctx.setTextDrawingMode(.fillStroke)
		}

		super.drawText(in: rect)
	}

}

