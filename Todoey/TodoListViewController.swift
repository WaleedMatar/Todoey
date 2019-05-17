//
//  ViewController.swift
//  Todoey
//
//  Created by Waleed Matar on ٣٠‏/١١‏/٢٠١٨.
//  Copyright © ٢٠١٨ WaleedMatar. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray:[String] = ["Find Milk", "Bay Eggos", "Destory Demogorgon"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

//Mark - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
//MARK - tableView Delegate methods

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath.row)
        print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
             tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
            

        tableView.deselectRow(at: indexPath, animated: true)
    }
}

