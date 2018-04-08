//
//  IngredientType.swift
//  DietFairy
//
//  Created by Conan tan on 4/3/18.
//  Copyright © 2018 Conan tan. All rights reserved.
//

import Foundation

class FoodType {
    var Name:String?
    var Ingredients:[Foods?]
    
    init (Name:String, Ingredients:[Foods?]){
        self.Name = Name
        self.Ingredients = Ingredients
    }
}
