//
//  IngredientsTableViewController.swift
//  DietFairy
//
//  Created by Conan tan on 4/1/18.
//  Copyright © 2018 Conan tan. All rights reserved.
//

import UIKit

class IngredientsTableViewController: UITableViewController {
    
    var Ingredients:[ingredientType] = []
    var substitutes:[String] = ["Avocado", "Potatoe", "Limes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createModel()
        self.title = "Ingredients"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return Ingredients.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Ingredients[section].list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ingredient", for: indexPath)
        cell.textLabel?.text = Ingredients[indexPath.section].list[indexPath.row]
        return cell
    }
    

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Ingredients[section].type
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToInfo"{
            if let destinationVC = segue.destination as? IngredientInfoViewController{
                let row = tableView.indexPathForSelectedRow?.row
                let section = tableView.indexPathForSelectedRow?.section
                destinationVC.ingredient = Ingredients[section!]
                destinationVC.index = row
            }
        }
    }
    
    private func createModel(){
        Ingredients.append(ingredientType(list: ["Orange", "Lime", "Tomatoe"], type: "Fruit", substitutes:substitutes))
        Ingredients.append(ingredientType(list:["Potatoe", "Carrot", "Celery"], type: "Vegetable", substitutes:["Onions", "Rice"]))
        Ingredients.append(ingredientType(list:["Beef", "Chicken", "Pork"], type: "Protein", substitutes:["Tuna", "Salmon", "Yellowtail"]))
        Ingredients.append(ingredientType(list:["Whole Wheat", "White", "Sourdough"], type: "Bread", substitutes:["Pita", "Tortilla", "Bagel"]))
    }
    

    
    
    
    
    
    
    
    
    
    
}
