//
//  OnboardingCollectionViewCell.swift
//  Yummie
//
//  Created by Huda M. A'abed on 02/09/2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var object: Any?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(){
        if let object = self.object as? OnboardingScreens {
            imgView.image = UIImage.init(named: object.image ?? "")
            lblTitle.text = object.title
            lblDescription.text = object.descriptions
        }
    }
}
