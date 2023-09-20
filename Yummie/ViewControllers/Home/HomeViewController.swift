//
//  HomeViewController.swift
//  Yummie
//
//  Created by Huda M. A'abed on 02/09/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var foodCategoryCollectionView: UICollectionView!
    
    @IBOutlet weak var popularDishesCollectionView: UICollectionView!
    
    @IBOutlet weak var chefSpecialsCollectionView: UICollectionView!
    
    var foodCategory: [FoodCategory] = []
    var popularDishes: [PopularDishes] = []
    var chefSpecials: [ChefSpecials] = []

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
    
    @IBAction func btnOrders(_ sender: Any) {
      
    }
    
}

extension HomeViewController {
    func setupView(){
        foodCategoryCollectionView.registerXib(cell: FoodCategoryCollectionViewCell.self)
        popularDishesCollectionView.registerXib(cell: PopularDishesCollectionViewCell.self)
        chefSpecialsCollectionView.registerXib(cell: ChefsSpecialsCollectionViewCell.self)

        
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id2", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id2", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id2", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id2", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id2", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id2", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))
        foodCategory.append(FoodCategory(id: "id1", foodImage: "https://picsum.photos/200/300", foodName: "pizza"))


        popularDishes.append(PopularDishes(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !", calories: 309))
        popularDishes.append(PopularDishes(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !", calories: 39))
        popularDishes.append(PopularDishes(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 3089))
        popularDishes.append(PopularDishes(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !", calories: 303))
        popularDishes.append(PopularDishes(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 309))
        popularDishes.append(PopularDishes(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !", calories: 39))
        popularDishes.append(PopularDishes(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !", calories: 3089))
        popularDishes.append(PopularDishes(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 303))
        
        chefSpecials.append(ChefSpecials(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !", calories: 309))
        chefSpecials.append(ChefSpecials(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 39))
        chefSpecials.append(ChefSpecials(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !", calories: 3089))
        chefSpecials.append(ChefSpecials(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 303))
        chefSpecials.append(ChefSpecials(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !", calories: 309))
        chefSpecials.append(ChefSpecials(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 39))
        chefSpecials.append(ChefSpecials(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !", calories: 3089))
        chefSpecials.append(ChefSpecials(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 303))
        
        
    }
    
    func localized(){
        self.title = "Yummie"
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == foodCategoryCollectionView {
            return foodCategory.count
        } else if collectionView == popularDishesCollectionView {
            return popularDishes.count
        } else {
            return chefSpecials.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == foodCategoryCollectionView {
            let cell: FoodCategoryCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCategoryCollectionViewCell.id, for: indexPath) as! FoodCategoryCollectionViewCell
            let object = self.foodCategory[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        } else if collectionView == popularDishesCollectionView {
            let cell: PopularDishesCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: PopularDishesCollectionViewCell.id, for: indexPath) as! PopularDishesCollectionViewCell
            let object = self.popularDishes[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
        } else {
            let cell: ChefsSpecialsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: ChefsSpecialsCollectionViewCell.id, for: indexPath) as! ChefsSpecialsCollectionViewCell
            let object = self.chefSpecials[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // let selectedFoodCategory = foodCategory[indexPath.row]
        if collectionView == popularDishesCollectionView{
            let selectedPopularDishesRow = popularDishes[indexPath.row]
            let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "DishDetailsViewController") as! DishDetailsViewController
            vc.categoryFood = .selectedPopularDishes(selectedPopularDishesRow)
            vc.push()
        } else if collectionView == chefSpecialsCollectionView {
            let selectedChefSpecialsRow = chefSpecials[indexPath.row]
            let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "DishDetailsViewController") as! DishDetailsViewController
            vc.categoryFood = .selectedChefSpecials(selectedChefSpecialsRow)
            vc.push()
        } else {
            let selectedFoodCategoryCell = foodCategory[indexPath.row]
            let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "DishListViewController") as! DishListViewController
            vc.selectedFoodCategory = selectedFoodCategoryCell
            vc.push()
        }
    }
    
}

