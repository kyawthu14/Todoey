//
//  ViewController.swift
//  Todoey
//
//  Created by Kyaw Thu on 9/28/18.
//  Copyright © 2018 Kyaw Thu. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["orange", "banana", "pineapple"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    //MARK - Tableview Datasource Method
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    // MARK - Tableview Delegate Method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none

        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

