//
//  DishListViewController.swift
//  Yummie
//
//  Created by Huda M. A'abed on 20/09/2023.
//

import UIKit

class DishListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var dishList: [DishList] = []
    var selectedFoodCategory: FoodCategory!
    
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

extension DishListViewController {
    func setupView(){
        tableView.registerXib(identifier: "DishListTableViewCell")
    }
    
    func localized(){
    }
    
    func setupData(){
        dishList.append(DishList(image: "https://picsum.photos/200/300", foodName: "djfklnd", userName: "zxc  dfvgh jfvcbyuyoev fycenvedcye dishList gtfewcf"))
        dishList.append(DishList(image: "https://picsum.photos/200/300", foodName: "jnhgb", userName: "jzresxtdcyfvugbihnjmk,xtdrcyfvugbihnojhn"))
        dishList.append(DishList(image: "https://picsum.photos/200/300", foodName: "djfmjynhtbgdfdklnd", userName: "jhn"))
        dishList.append(DishList(image: "https://picsum.photos/200/300", foodName: "erstdh", userName: "jugyfgc dyusog tyfewh cdyufvewycfhwyeghn"))
        dishList.append(DishList(image: "https://picsum.photos/200/300", foodName: ",kmujnyht", userName: "etreytui7yguhijm"))
        dishList.append(DishList(image: "https://picsum.photos/200/300", foodName: "juhytgrfe", userName: "sssew fwwfe xdcfvgybhunjxtrdc yftvugybih unjwse drftgyhujik"))

    }
    
    func fetchData(){
    }
}



extension DishListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: DishListTableViewCell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.id, for: indexPath) as! DishListTableViewCell
        let object = dishList[indexPath.row]
        cell.object = object
        cell.configureCellList()
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedFoodCategoryCell = dishList[indexPath.row]
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "DishDetailsViewController") as! DishDetailsViewController
        vc.categoryFood = .selectedFoodCategory(selectedFoodCategoryCell)
        vc.push()
    }
}




