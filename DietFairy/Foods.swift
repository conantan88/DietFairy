//
//  Ingredients.swift
//  DietFairy
//
//  Created by Conan tan on 4/1/18.
//  Copyright © 2018 Conan tan. All rights reserved.
//

import Foundation

class Foods {
    var Name:String?
    var lowSodiumSubs:[String?]
    var lowSugarSubs:[String?]
    var lowCarbSubs:[String?]
    var dairySubs:[String?]
    var nutSubs:[String?]
    var glutenSubs:[String?]
    
    init(Name:String, lowSodiumSubs:[String?], lowSugarSubs:[String?], lowCarbSubs:[String?], dairySubs:[String?], nutSubs:[String?], glutenSubs:[String?]) {
        self.Name = Name
        self.lowSodiumSubs = lowSodiumSubs
        self.lowSugarSubs = lowSugarSubs
        self.lowCarbSubs = lowCarbSubs
        self.dairySubs = dairySubs
        self.nutSubs = nutSubs
        self.glutenSubs = glutenSubs
    }
}
