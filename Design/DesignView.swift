//
//  DesignView.swift
//  Pods-SMDesign_Example
//
//  Created by الياسي on 25/06/2021.
//

import UIKit
//1
extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

@IBDesignable
open class DesignArchedView : UIView {
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
//TranslateColor2
@IBDesignable
open class DesignTranslateColorview : UIView {
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
 //3
@IBDesignable
open class DesignArchedframeView  : UIView {
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
 
// 4
@available(iOS 11.0, *)
@IBDesignable
open class DesignArchedframeViewA : UIView {
    @IBInspectable
        public var archedcornerRadius: CGFloat = 2.0 {
            didSet {
                self.layer.cornerRadius = self.archedcornerRadius
                self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner]
                self.layer.shadowColor = UIColor.black.cgColor
                self.layer.shadowOffset = CGSize(width: 1, height: 1)
                self.layer.shadowOpacity = 0.3
                self.layer.shadowRadius = 2.0
            }
        }
   
public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
//5
@available(iOS 11.0, *)
@IBDesignable
open class DesignArchedframeViewB : UIView {
    @IBInspectable
        public var archedcornerRadius: CGFloat = 2.0 {
            didSet {
                self.layer.cornerRadius = self.archedcornerRadius
                self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner]
                self.layer.shadowColor = UIColor.black.cgColor
                self.layer.shadowOffset = CGSize(width: 1, height: 1)
                self.layer.shadowOpacity = 0.3
                self.layer.shadowRadius = 2.0
            }
        }
   
public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

 //6
@IBDesignable
open class DesignCircleView : UIView {
   
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
//7
@IBDesignable
open class DesignCircleShadeView : UIView {
   
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
