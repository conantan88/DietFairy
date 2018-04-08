//
//  IngredientInfoViewController.swift
//  DietFairy
//
//  Created by Conan tan on 4/1/18.
//  Copyright © 2018 Conan tan. All rights reserved.
//

import UIKit

class IngredientInfoViewController: UIViewController {

    @IBOutlet weak var ingredientName: UILabel!
    @IBOutlet weak var subList: UILabel!
    var ingredient:ingredientType?
    var index:Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ingredient Info"
        self.ingredientName.text = ingredient?.list[index!]
        self.subList.text = stringify(list:(ingredient?.substitutes)!)
        
        // Do any additional setup after loading the view.
    }
    
    func stringify(list:[String?]) -> String {
        var temp = ""
        for item in list{
            temp += item! + "\n"
        }
        print(temp)
        return temp
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
