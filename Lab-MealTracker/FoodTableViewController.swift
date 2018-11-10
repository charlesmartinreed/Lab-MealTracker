//
//  FoodTableViewController.swift
//  Lab-MealTracker
//
//  Created by Charles Martin Reed on 11/9/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {

    //MARK:- Properties
    //var mealsArray = [Meal]()
    
    var meals: [Meal] {
        let breakfast = Meal(name: "Breakfast", food: [
            Food(name: "Eggs", description: "Scrambled with cheese"),
            Food(name: "Eggs", description: "Scrambled with cheese"),
            Food(name: "Eggs", description: "Scrambled with cheese")
            ])
        let lunch = Meal(name: "Lunch", food: [
            Food(name: "Tacos", description: "Shredded Pork"),
            Food(name: "Tacos", description: "Shredded Pork"),
            Food(name: "Tacos", description: "Shredded Pork")
            ])
        let dinner = Meal(name: "Dinner", food: [
            Food(name: "Salad", description: "Caesar Salad"),
            Food(name: "Salad", description: "Caesar Salad"),
            Food(name: "Salad", description: "Caesar Salad")
            ])
        
        
        return [breakfast, lunch, dinner]
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        //return mealsArray.count
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //return mealsArray[section].food.count
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)

        //meal for a given row
        //let meal = mealsArray[indexPath.section]
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        // Configure the cell...
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        //return mealsArray[section].name
        return meals[section].name
    }
    


}
