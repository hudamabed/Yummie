//
//  DishOrdersViewController.swift
//  Yummie
//
//  Created by Huda M. A'abed on 28/09/2023.
//

import UIKit

class DishOrdersViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var dishOrders: [Orders] = []
    var selectedFoodCategory: Orders!

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

extension DishOrdersViewController {
    func setupView(){
        tableView.registerXib(identifier: "DishListTableViewCell")
    }
    
    func localized(){
    }
    
    func setupData(){
        dishOrders.append(Orders(id: "1", name: "Huda A'abed", dish: .init(id: "id1", name: "Checken", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 39)))
        dishOrders.append(Orders(id: "1", name: "Mohammed", dish: .init(id: "id2", name: "Pasta", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 39)))
        dishOrders.append(Orders(id: "1", name: "Ahmed", dish: .init(id: "id3", name: "Steak", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 39)))
        dishOrders.append(Orders(id: "1", name: "A'abed", dish: .init(id: "id4", name: "Cheese cake", image: "https://picsum.photos/200/300", description: "This is the most delisios dish i ever taste !This is the most delisios dish i ever tasteThis is the most delisios dish i ever tasteThis is the most delisios dish i ever taste", calories: 39)))
    }
    
    func fetchData(){
    }
}


extension DishOrdersViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishOrders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: DishListTableViewCell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.id, for: indexPath) as! DishListTableViewCell
        let object = dishOrders[indexPath.row]
        cell.object = object
        cell.configureCellOrders()
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedFoodCategoryCell = dishOrders[indexPath.row]
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "DishDetailsViewController") as! DishDetailsViewController
        vc.order = selectedFoodCategory
        vc.push()
    }
}

  
 
   
