//
//  UIIImageFile.swift
//  FriendPageReadytoSubmit
//
//  Created by Cynthianitza21 on 3/17/21.
//

import UIKit


extension UIImageView {
    
    func roundedImage() {
        
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
        
    }
}
