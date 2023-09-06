//
//  PopularDishesCollectionViewCell.swift
//  Yummie
//
//  Created by Huda M. A'abed on 06/09/2023.
//

import UIKit

class PopularDishesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblFoodName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblCalories: UILabel!
    @IBOutlet weak var imgFood: UIImageView!
    
    var object: Any?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(){
        if let object = self.object as? PopularDishes{
            lblFoodName.text = object.name
            imgFood.image = UIImage.init(named: object.image ?? "")
            imgFood.kf.setImage(with:object.image?.isURl)
            lblDescription.text = object.description
            lblCalories.text = object.formattedCalories
        }
        
    }
}
