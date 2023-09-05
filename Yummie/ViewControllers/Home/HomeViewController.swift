//
//  HomeViewController.swift
//  Yummie
//
//  Created by Huda M. A'abed on 02/09/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var foodCategoryCollectionView: UICollectionView!
    
    var objects: [FoodCategory] = []
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
        foodCategoryCollectionView.registerXib(cell: FoodCategoryCollectionViewCell.self)
        objects.append(FoodCategory(id: "id1", foodImage: "bgBurger", foodName: "pizza"))
        objects.append(FoodCategory(id: "id2", foodImage: "bgBurger", foodName: "pizza"))
        objects.append(FoodCategory(id: "id1", foodImage: "bgBurger", foodName: "pizza"))
        objects.append(FoodCategory(id: "id1", foodImage: "bgBurger", foodName: "pizza"))
        objects.append(FoodCategory(id: "id2", foodImage: "bgBurger", foodName: "pizza"))
        objects.append(FoodCategory(id: "id1", foodImage: "bgBurger", foodName: "pizza"))

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
        return objects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: FoodCategoryCollectionViewCell = foodCategoryCollectionView.dequeueReusableCell(withReuseIdentifier: FoodCategoryCollectionViewCell.id, for: indexPath) as! FoodCategoryCollectionViewCell
        let object = self.objects[indexPath.row]
        cell.object = object
        cell.configureCell()
        return cell
    }
}
//    extension HomeViewController: UICollectionViewDelegateFlowLayout {
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout ,sizeForItemAt indexPath: IndexPath) -> CGSize {
////            let width: CGFloat = (collectionView.frame.width - 10 )
////            let hight: CGFloat = 644
//            let size: CGSize = CGSize.init(width: collectionView.frame.width, height: collectionView.frame.height)
//            return size
//            
//        }
//    
//    
//}


