//
//  FoodCategory.swift
//  Yummie
//
//  Created by Huda M. A'abed on 04/09/2023.
//

import UIKit

class FoodCategory{
    let id: String?
    let foodImage: String?
    let foodName: String?
    
    init(id: String?, foodImage: String?, foodName: String?) {
        self.id = id
        self.foodImage = foodImage
        self.foodName = foodName
    }
}
