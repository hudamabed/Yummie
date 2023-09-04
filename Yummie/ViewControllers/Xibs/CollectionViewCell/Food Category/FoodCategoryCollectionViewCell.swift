//
//  FoodCategoryCollectionViewCell.swift
//  Yummie
//
//  Created by Huda M. A'abed on 04/09/2023.
//

import UIKit

class FoodCategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(){
        if let object = self.object as? FoodCategory{
            lblTitle.text = object.foodName
            imageView.image = UIImage.init(named: object.foodImage ?? "")
             
            
        }
    }

}
