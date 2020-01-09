//
//  ViewController.swift
//  Todoey
//
//  Created by Anurag Kashyap on 09/01/20.
//  Copyright © 2020 Globallogic. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: "TodoListCell")
        cell.textLabel?.text = "Index Value \(indexPath.row)"
        return cell
    }
}


extension TodoListViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch tableView.cellForRow(at: indexPath)?.accessoryType {
        case .checkmark:
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        default:
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    }
}
