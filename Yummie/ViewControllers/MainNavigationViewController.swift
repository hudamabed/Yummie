//
//  MainNavigationViewController.swift
//  Yummie
//
//  Created by Huda M. A'abed on 02/09/2023.
//

import UIKit

class MainNavigationViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}

extension MainNavigationViewController {
    func setupView(){
        AppDelegate.shared?.rootNavigationController = self
    }
    
    func localized(){
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}

extension MainNavigationViewController {
    
    
    
}
