//
//  DishDetailsViewController.swift
//  Yummie
//
//  Created by Huda M. A'abed on 09/09/2023.
//

import UIKit

class DishDetailsViewController: UIViewController {
    
    @IBOutlet weak var imgDish: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblCalories: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var textFiled: UITextField!
    @IBOutlet weak var btnOrder: UIButton!
    
    var selectedPopularDishes: PopularDishes!
    var selectedChefSpecials: ChefSpecials!
    var isdPopularDishes = false
    
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

extension DishDetailsViewController {
    func setupView(){
    }
    
    func localized(){
    }
    
    func setupData(){
        if isdPopularDishes {
            lblTitle.text = selectedPopularDishes.name
            imgDish.kf.setImage(with: selectedPopularDishes.image?.isURl)
            lblCalories.text = selectedPopularDishes.formattedCalories
            lblDescription.text = selectedPopularDishes.description
        } else {
            lblTitle.text = selectedChefSpecials.name
            imgDish.kf.setImage(with: selectedChefSpecials.image?.isURl)
            lblCalories.text = selectedChefSpecials.formattedCalories
            lblDescription.text = selectedChefSpecials.description
        }
}

    func fetchData(){
    }
}

extension DishDetailsViewController {
    
    
    
}

