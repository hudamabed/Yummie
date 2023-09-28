//
//  DishListTableViewCell.swift
//  Yummie
//
//  Created by Huda M. A'abed on 20/09/2023.
//

import UIKit

class DishListTableViewCell: UITableViewCell {

    @IBOutlet weak var imgFood: UIImageView!
    @IBOutlet weak var lblOrder: UILabel!
    @IBOutlet weak var lblUserName: UILabel!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureCellList(){
        if let object = self.object as? DishList{
            lblOrder.text = object.foodName
            lblUserName.text = object.userName
            imgFood.image = UIImage(named: object.image ?? "")
            imgFood.kf.setImage(with: object.image?.isURl)
        }
    }
    func configureCellOrders(){
        if let object = self.object as? Orders{
            lblOrder.text = object.dish?.name
            lblUserName.text = object.name
            imgFood.image = UIImage(named: object.dish?.image ?? "")
            imgFood.kf.setImage(with: object.dish?.image?.isURl)
        }
    }
 
     
    
}
