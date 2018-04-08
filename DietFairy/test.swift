//
//  test.swift
//  DietFairy
//
//  Created by Conan tan on 4/8/18.
//  Copyright © 2018 Conan tan. All rights reserved.
//

import Foundation


private func createModel(){
    var orange = Foods(Name: "Orange", lowSodiumSubs: ["None"], lowSugarSubs: ["Lime"], lowCarbSubs: ["None"], dairySubs: ["None"], nutSubs: ["None"], glutenSubs: ["None"])
    var apple = Foods(Name: "Apple", lowSodiumSubs: ["None"], lowSugarSubs: ["Pear"], lowCarbSubs: ["None"], dairySubs: ["None"], nutSubs: ["None"], glutenSubs: ["None"])
    var lime = Foods(Name: "Lime", lowSodiumSubs: ["None"], lowSugarSubs: ["Lemon", "Orange"], lowCarbSubs: ["None"], dairySubs: ["None"], nutSubs: ["None"], glutenSubs: ["None"])
    var mango = Foods(Name: "Mango", lowSodiumSubs: ["None"], lowSugarSubs: ["Pineapple"], lowCarbSubs: ["None"], dairySubs: ["None"], nutSubs: ["None"], glutenSubs: ["None"])
    
    fruit FoodType(Name: "Fruit", Ingredients: [orange, apple, lime, mango])

}
