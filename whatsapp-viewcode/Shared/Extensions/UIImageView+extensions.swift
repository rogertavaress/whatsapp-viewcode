//
//  UIImageView+extensions.swift
//  whatsapp-viewcode
//
//  Created by Rogério Tavares on 06/07/22.
//

import UIKit

extension UIImageView {
    func makeRounded() {
        self.layer.borderWidth = 0
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
