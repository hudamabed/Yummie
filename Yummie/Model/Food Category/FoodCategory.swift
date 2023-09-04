//
//  FoodCategory.swift
//  Yummie
//
//  Created by Huda M. A'abed on 04/09/2023.
//

import UIKit

class FoodCategory{
    var id: String?
    var foodImage: String?
    var foodName: String?
    
    init(id: String?, foodImage: String?, foodName: String?) {
        self.id = id
        self.foodImage = foodImage
        self.foodName = foodName
    }
}
