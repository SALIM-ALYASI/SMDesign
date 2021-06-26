//
//  DesignButton.swift
//  Pods-SMDesign_Example
//
//  Created by الياسي on 25/06/2021.
//

import UIKit

@IBDesignable
open class DesignArchedButton : UIButton {
   @IBInspectable
       public var archedcornerRadius: CGFloat = 2.0 {
           didSet {
                 self.layer.cornerRadius = self.archedcornerRadius
           }
       }
   @IBInspectable
       public var shadedegreeColor: Int = 1 {
           didSet {
               self.layer.shadowRadius = CGFloat(self.shadedegreeColor)
             
                
           }
       }
       @IBInspectable
           public var ShadeColor : UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) {
               didSet {
                
                   self.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
                    
                   self.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
                   self.layer.shadowOpacity = 5
                   self.layer.shadowColor = ShadeColor.cgColor
                   self.layer.shadowColor = ShadeColor.cgColor
   
               }
           }
public required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
   }
}
//TranslateColor
@IBDesignable
open class DesignTranslateColorButton : UIButton {
   @IBInspectable
       public var ShadeColor : UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) {
           didSet {
            
               self.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
                
               self.layer.shadowOffset = CGSize(width: 0.5, height: 0.5)
               self.layer.shadowOpacity = 5
               self.layer.shadowColor = ShadeColor.cgColor
               self.layer.shadowColor = ShadeColor.cgColor

           }
       }
   @IBInspectable
       public var archedcornerRadius: CGFloat = 2.0 {
           didSet {
                 self.layer.cornerRadius = self.archedcornerRadius
           }
       }
   
   @IBInspectable
       public var shadedegreeColor: Int = 1 {
           didSet {
               self.layer.shadowRadius = CGFloat(self.shadedegreeColor)
             
                
           }
       }
       @IBInspectable
           public var TranslateColorA : UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1) {
               didSet {
             }
           }
   @IBInspectable
       public var TranslateColorB : UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) {
           didSet {
         }
       }
   private lazy var gradientLayer: CAGradientLayer = {
       let gradient = CAGradientLayer()
       gradient.frame = self.bounds
       gradient.colors = [TranslateColorA.cgColor, TranslateColorB.cgColor]
       gradient.cornerRadius = CGFloat(shadedegreeColor)
       gradient.locations = [0, 1]
       gradient.startPoint = .zero
       gradient.endPoint = CGPoint(x: 0, y: 1)
       layer.insertSublayer(gradient, at: 0)
       return gradient }()
   open override func layoutSubviews() {
       super.layoutSubviews ()
       gradientLayer.frame = bounds }
   override init(frame: CGRect) {
       super.init(frame: .zero)
       self.layer.shadowOffset   = .zero
      
       self.layer.masksToBounds = true }
  
   required public init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
   }
}

@IBDesignable
open class DesignArchedframeButton : UIButton {
   @IBInspectable
       public var archedcornerRadius: CGFloat = 2.0 {
           didSet {
                 self.layer.cornerRadius = self.archedcornerRadius
           }
       }
   @IBInspectable
       public var FishFrame: Int = 1 {
           didSet {
               self.layer.borderWidth =  CGFloat(self.FishFrame)
             
                
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

