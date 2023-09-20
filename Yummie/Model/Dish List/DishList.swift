//
//  DishList.swift
//  Yummie
//
//  Created by Huda M. A'abed on 20/09/2023.
//

import Foundation
import UIKit


class DishList{
    let image: String?
    let foodName: String?
    let userName: String?
    
    init(image: String?, foodName: String?, userName: String?) {
        self.image = image
        self.foodName = foodName
        self.userName = userName
    }
}
