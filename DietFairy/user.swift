//
//  user.swift
//  DietFairy
//
//  Created by Conan tan on 4/8/18.
//  Copyright © 2018 Conan tan. All rights reserved.
//

import Foundation

class User {
    var username: String?
    var password: String?
    // var email: String?
    // diet: [lowSodium, lowCarb, lowSugar, nut, dairy, gluten]
    var diet: [Bool]
    var userRecipes:[Recipe?]
    
    init(username:String?, password:String?, diet:[Bool], userRecipes:[Recipe?]) {
        self.username = username
        self.password = password
        // var email: String?
        self.diet = diet
        self.userRecipes = userRecipes
    }
}

