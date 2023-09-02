//
//  UIApplectionEx.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 03/07/2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    
    var topViewController: UIViewController? {
        var topViewController: UIViewController? = UIApplication.shared.windows
            .filter(\.isKeyWindow)
            .first?
            .rootViewController
        
        while let presentedViewController = topViewController?.presentedViewController {
            topViewController = presentedViewController
        }
        
        return topViewController
    }
}

//    class var topViewController: UIViewController? {
//        if #available(iOS 13.0, *) {
//            let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
//            return keyWindow?.rootViewController?.topMostViewController
//        }
//
//        return UIApplication.shared.keyWindow?.rootViewController?.topMostViewController
//    }
//
//    var _topVC: UIViewController? {
//        return AppDelegate.shared?.rootNavigationController?._topMostViewController
//    }
//    var _topMostViewController: UIViewController? {
//        if let navigationController = self as? UINavigationController {
//            return navigationController.topViewController?._topMostViewController
//        } else if let tabBarController = self as? UITabBarController {
//            if let selectedViewController = tabBarController.selectedViewController {
//                return selectedViewController._topMostViewController
//            }
//            return tabBarController._topMostViewController
//        } else if let presentedViewController = self.presentedViewController {
//            return presentedViewController._topMostViewController
//        } else {
//            return self
//        }
//    }
//}




