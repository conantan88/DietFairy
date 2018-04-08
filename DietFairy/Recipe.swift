//
//  Recipe.swift
//  DietFairy
//
//  Created by Conan tan on 4/3/18.
//  Copyright © 2018 Conan tan. All rights reserved.
//

import Foundation

class Recipe {
    var Name:String?
    var ingredientList:[String?]
    var diet:String?
    
    init(Name:String?, ingredientList:[String?], diet:String?) {
        self.Name = Name
        self.ingredientList = ingredientList
        self.diet = diet
    }
}
