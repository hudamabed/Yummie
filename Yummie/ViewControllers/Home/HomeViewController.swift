//
//  HomeViewController.swift
//  Yummie
//
//  Created by Huda M. A'abed on 02/09/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
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

extension HomeViewController {
    func setupView(){
    }
    
    func localized(){
        self.title = "Yummie"
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension HomeViewController {
    
    
    
}


