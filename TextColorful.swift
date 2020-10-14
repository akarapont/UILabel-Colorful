//
//  TextColorful.swift
//  GraphAnimation
//
//  Created by akharapon on 14/10/2563 BE.
//

import UIKit

extension UILabel {
	
	class TextColorful {
		var text: String = ""
		var color: UIColor = .black
		
		init(text: String, color: UIColor) {
			self.text = text
			self.color = color
		}
	}
	
	func setTextColorful(_ arr: [TextColorful]) {
		var stringValue: String = ""
		let _ = arr.filter { (item) -> Bool in
			stringValue = stringValue + item.text
			return true
		}
		let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: stringValue)
		let _ = arr.filter { (item) -> Bool in
			attributedString.setColor(color: item.color, forText: item.text)
			return true
		}
		self.attributedText = attributedString
	}
}

extension NSMutableAttributedString {

	func setColor(color: UIColor, forText stringValue: String) {
		let range: NSRange = self.mutableString.range(of: stringValue, options: .caseInsensitive)
		self.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
	}

}
