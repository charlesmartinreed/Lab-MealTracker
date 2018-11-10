//
//  Meal.swift
//  Lab-MealTracker
//
//  Created by Charles Martin Reed on 11/9/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import Foundation

struct Meal {
    var name: String
    var food: [Food]
    
    init(name: String, food: [Food]) {
        self.name = name
        self.food = food
    }
}


