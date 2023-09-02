//
//  UITextField.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 10/08/2022.
//

import Foundation
import UIKit


extension UITextField{
   @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
    
    @IBInspectable var textFiledPadding: CGFloat {
           get {
               return leftView?.frame.width ?? 0
           }
           set {
               addPadding(newValue)
           }
       }

       private func addPadding(_ padding: CGFloat) {
           let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.height))
           leftView = paddingView
           leftViewMode = .always
           rightView = paddingView
           rightViewMode = .always
       }
    
    @IBInspectable var placeholderPadding: CGFloat {
         get {
             return 0
         }
         set {
             let placeholderFont = font ?? UIFont.systemFont(ofSize: 12)
             let attributes = [NSAttributedString.Key.font: placeholderFont]
             let placeholderWidth = NSAttributedString(string: placeholder ?? "", attributes: attributes).size().width
             let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: placeholderWidth + newValue, height: self.frame.height))
             leftView = paddingView
             leftViewMode = .always
         }
     }
}




///Change colorpalceholder . 
//@IBOutlet weak var txtFolder: UITextField!
//        didSet {
//            let PlaceholderText = NSAttributedString(string:"Search Folder",attributes: [NSAttributedString.Key.foregroundColor:"#22215B".color_])
//
//            txtFolder.attributedPlaceholder = PlaceholderText
//        }
//    }
