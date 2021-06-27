//
//  DesignImageView.swift
//  Pods-SMDesign_Example
//
//  Created by الياسي on 25/06/2021.
//

import UIKit
@IBDesignable
open class ArchedImag: UIImageView {
   @IBInspectable
       public var cornerRadius: CGFloat = 2.0 {
           didSet {
                 self.layer.cornerRadius = self.cornerRadius
           }
       }
   @IBInspectable
       public var ColorRadius: Int = 1 {
           didSet {
               self.layer.shadowRadius = CGFloat(self.ColorRadius)
               self.layer.shadowColor = UIColor.black.cgColor
               self.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
               self.layer.shadowColor = UIColor.black.cgColor
               self.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
               self.layer.shadowOpacity = 5
                
           }
       }
public required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
   }
}
@IBDesignable
open class CircleImageView  : UIImageView {
  
   @IBInspectable
       public var FishFrame: Int = 1 {
           didSet {
               self.layer.borderWidth =  CGFloat(self.FishFrame)
               self.layer.cornerRadius = self.frame.height  / 2
                
           }
       }
    
       @IBInspectable
           public var ShadeColor : UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) {
               didSet {
                
                   self.layer.borderColor  = self.ShadeColor.cgColor
                    
               }
           }
public required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
   }
}
@IBDesignable
open class CircleShadeImageView : UIImageView {
  
   @IBInspectable
       public var FishFrameColor: Int = 1 {
           didSet {
               self.layer.borderWidth =  CGFloat(self.FishFrameColor)
               self.layer.cornerRadius = self.frame.height  / 2
                
           }
       }
    
       @IBInspectable
           public var FrameShadeColor : UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) {
               didSet {
                
                   self.layer.borderColor  = self.FrameShadeColor.cgColor
                   self.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
                                   
                                  self.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
                                  self.layer.shadowOpacity = 5
                   self.layer.shadowColor = UIColor.black.cgColor
                   self.layer.shadowColor = UIColor.black.cgColor
                    
               }
           }

public required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
   }
}
