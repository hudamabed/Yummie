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
    
    enum CategoryFood{
       case selectedPopularDishes(PopularDishes)
       case selectedChefSpecials(ChefSpecials)
       case selectedFoodCategory(DishList)
    }
     
    var order:Orders?
    var categoryFood: CategoryFood?
    
//    var selectedPopularDishes: PopularDishes!
//    var selectedChefSpecials: ChefSpecials!
//    var isdPopularDishes = true
    
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
        switch categoryFood{
        case .selectedChefSpecials(let selectedPopularDishes):
            lblTitle.text = selectedPopularDishes.name
            imgDish.kf.setImage(with: selectedPopularDishes.image?.isURl)
            lblCalories.text = selectedPopularDishes.formattedCalories
            lblDescription.text = selectedPopularDishes.description
        case .selectedPopularDishes(let selectedChefSpecials):
            lblTitle.text = selectedChefSpecials.name
            imgDish.kf.setImage(with: selectedChefSpecials.image?.isURl)
            lblCalories.text = selectedChefSpecials.formattedCalories
            lblDescription.text = selectedChefSpecials.description
        case .selectedFoodCategory(let selectedFoodCategory):
            lblTitle.text = selectedFoodCategory.foodName
            imgDish.kf.setImage(with: selectedFoodCategory.image?.isURl)
            lblDescription.text = selectedFoodCategory.userName
        case .none:
            ""
            
        }
//        if let object = self.object as? Orders{
//            lblTitle.text = order.name
//            imgDish.kf.setImage(with: order.image?.isURl)
//            lblCalories.text = order.formattedCalories
//            lblDescription.text = order.description
//        }
    }

    func fetchData(){
    }
}

extension DishDetailsViewController {
    
    
    
}

