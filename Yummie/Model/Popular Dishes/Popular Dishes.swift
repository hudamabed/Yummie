//
//  Popular Dishes.swift
//  Yummie
//
//  Created by Huda M. A'abed on 06/09/2023.
//

import Foundation
import UIKit

class PopularDishes{
    var id: String?
    var name: String?
    var image: String?
    var description: String?
    var calories: Int?
    
    init(id: String?, name: String?, image: String?, description: String?, calories: Int?) {
        self.id = id
        self.name = name
        self.image = image
        self.description = description
        self.calories = calories
    }
    
    var formattedCalories: String{
        return "\(calories ?? 0) Calories"
        
    }
    
}
