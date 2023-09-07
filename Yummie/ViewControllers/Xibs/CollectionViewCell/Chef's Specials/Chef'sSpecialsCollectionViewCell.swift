//
//  Chef'sSpecialsCollectionViewCell.swift
//  Yummie
//
//  Created by Huda M. A'abed on 06/09/2023.
//

import UIKit

class Chef_sSpecialsCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell(){
        if let object = self.object as? FoodCategory{
            lblTitle.text = object.foodName
            imageView.image = UIImage(named: object.foodImage ?? "")
           // imageView.kf.setImage(with: object.foodImage?.isURl)
             
        }

}
