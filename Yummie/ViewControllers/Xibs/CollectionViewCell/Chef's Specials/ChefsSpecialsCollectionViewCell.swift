//
//  Chef'sSpecialsCollectionViewCell.swift
//  Yummie
//
//  Created by Huda M. A'abed on 06/09/2023.
//

import UIKit
import Kingfisher

class ChefsSpecialsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblFoodName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblCalories: UILabel!
    @IBOutlet weak var ImgFood: UIImageView!
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell(){
        if let object = self.object as? ChefSpecials{
            lblFoodName.text = object.name
            ImgFood.image = UIImage(named: object.image ?? "")
            ImgFood.kf.setImage(with: object.image?.isURl)
            lblCalories.text = object.formattedCalories
            lblDescription.text = object.description
        }
        
    }
}
