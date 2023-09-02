//
//  UIViewControllerEX.swift
//  IOSCourse
//
//  Created by Huda M. A'abed on 12/04/2022.
//

import Foundation
import UIKit


extension UIViewController {
    
    var isHidNavigation: Bool {
        set {
            self.navigationController?.setNavigationBarHidden(newValue, animated: true)
        }
        get {
            return self.navigationController?.isNavigationBarHidden ?? false
        }
            
    }
    
//
    
    
    
    func getStatusBarHeight() -> CGFloat {
       var statusBarHeight: CGFloat = 0
       if #available(iOS 13.0, *) {
           let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
           statusBarHeight = window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
       } else {
           statusBarHeight = UIApplication.shared.statusBarFrame.height
       }
       return statusBarHeight
   }
    
    func push(){
        AppDelegate.shared?.rootNavigationController?.pushViewController(self, animated: true)
    }
    
    func pushWithoutAnimated(){
        AppDelegate.shared?.rootNavigationController?.pushViewController(self, animated: false)
    }
    
    func pop(){
        AppDelegate.shared?.rootNavigationController?.popViewController(animated: true)
    
    }
    
    func rootPush(){
        AppDelegate.shared?.rootNavigationController?.setViewControllers([self], animated: true)
    
    }
    
    func presenVC(){
        AppDelegate.shared?.rootNavigationController?.present(self, animated: true, completion: nil)
        
    }
    

     
    func  safeperformSegue(withIdentifier identifier : String , sender: Any?) {
        if canPerformSegue(identifier: identifier){
        self.performSegue(withIdentifier: identifier , sender:sender)
        }
    }
    
    
    func canPerformSegue(identifier: String) -> Bool {
         guard let identifiers = value(forKey: "storyboardSegueTemplates") as? [NSObject] else {
             return false
         }
         let canPerform = identifiers.contains { (object) -> Bool in
             if let id = object.value(forKey: "_identifier") as? String {
                 return id == identifier
             }else{
                 return false
             }
         }
         return canPerform
     }
    
    
    @IBAction func btnClose(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    func showAlertError(title: String?, message : String?){
        
        let alert = UIAlertController.init(title: title, message: message  , preferredStyle: UIAlertController.Style.alert)
        let okayAction = UIAlertAction.init(title: "OK", style: UIAlertAction.Style.default)
    
        alert.addAction(okayAction)
        alert.presenVC()
   }
    
    func showAlertMessage(message : String? ){
        
        let alert = UIAlertController.init(title: "Message" , message: message  , preferredStyle: UIAlertController.Style.alert)
        let okayAction = UIAlertAction.init(title: "OK", style: UIAlertAction.Style.default)
      
        alert.addAction(okayAction)
        alert.presenVC()
   }
    
    func showAlertError( message : String?){
        
        let alert = UIAlertController.init(title: "Error", message: message  , preferredStyle: UIAlertController.Style.alert)
        let okayAction = UIAlertAction.init(title: "OK", style: UIAlertAction.Style.default)
    
        alert.addAction(okayAction)
        alert.presenVC()
   }
    
    
    
     //@escaping because the action happen when the user enter the button
    
    func showAlert(title : String? , message : String? , buttonTitle1 : String? = "Ok"  , buttonTitle2 : String? = "Cancel" , buttonAction1: @escaping (()-> Void) , buttonAction2: @escaping (()-> Void) ){
        
        let alert = UIAlertController.init(title: title, message: message  , preferredStyle: UIAlertController.Style.alert)
        let okayAction = UIAlertAction.init(title: buttonTitle1, style: UIAlertAction.Style.default) { action in
            debugPrint("OkayAction is pressed")
            buttonAction1()
        }
        let cancelAction = UIAlertAction.init(title: buttonTitle2, style: UIAlertAction.Style.destructive) { action in
            debugPrint("cancelAction is pressed")
            buttonAction2()
        }
      
        alert.addAction(okayAction)
        alert.addAction(cancelAction)
        alert.presenVC()
   }
    
    
    func showAlert(title : String? , message : String? , buttonTitle1 : String? = "Ok"  , buttonTitle2 : String? = "Cancel" , buttonTitle3 : String? = "Later" , buttonAction1: @escaping (()-> Void) , buttonAction2: @escaping (()-> Void) , buttonAction3: @escaping (()-> Void)){
        
        let alert = UIAlertController.init(title: title, message: message  , preferredStyle: UIAlertController.Style.alert)
        let okayAction = UIAlertAction.init(title: buttonTitle1, style: UIAlertAction.Style.default) { action in
            debugPrint("OkayAction is pressed")
            buttonAction1()
        }
        let cancelAction = UIAlertAction.init(title: buttonTitle2, style: UIAlertAction.Style.destructive) { action in
            debugPrint("cancelAction is pressed")
            buttonAction2()
        }
        let LaterAction = UIAlertAction.init(title: buttonTitle3 , style: UIAlertAction.Style.cancel) { action in
            debugPrint("LaterAction is pressed")
            buttonAction3()
        }

        alert.addAction(okayAction)
        alert.addAction(cancelAction)
        alert.addAction(LaterAction)
        alert.presenVC()
   }
    
    
    func showActionSheet(title : String? , message : String?){
        let actionSheet = UIAlertController.init(title: title, message: message , preferredStyle: UIAlertController.Style.actionSheet)
        
        let okayAction = UIAlertAction.init(title:"Ok", style: UIAlertAction.Style.default) { action in
            debugPrint("OkayAction is pressed")
        }
        let cancelAction = UIAlertAction.init(title: "Cancel", style: UIAlertAction.Style.cancel) { action in
            debugPrint("cancelAction is pressed")
        }
        let LaterAction = UIAlertAction.init(title: "Later", style: UIAlertAction.Style.destructive) { action in
            debugPrint("LaterAction is pressed")
        }
        
        actionSheet.addAction(okayAction)
        actionSheet.addAction(cancelAction)
        actionSheet.addAction(LaterAction)
        
        actionSheet.presenVC()
    
    }
}
