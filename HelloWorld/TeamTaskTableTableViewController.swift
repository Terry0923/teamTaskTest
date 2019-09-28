//
//  TeamTaskTableTableViewController.swift
//  HelloWorld
//
//  Created by Jui Tao Tsai on 9/27/19.
//  Copyright © 2019 Jui Tau Tsai. All rights reserved.
//

import UIKit

struct cell {
    var groupTitle: String?
    var date: String?
    var task: String?
    var numOfTask: String?
}

class TeamTaskTableTableViewController: UITableViewController {
    
    var cells: [cell] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        cells.append(cell(groupTitle: "Title_1", date: "date_1", task: "task_1", numOfTask: "1"))
        cells.append(cell(groupTitle: "Title_2", date: "date_2", task: "task_2", numOfTask: "2"))
        cells.append(cell(groupTitle: "Title_3", date: "date_3", task: "task_3", numOfTask: "3"))
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        //self.tableView.register(TeamTaskTableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.register(UINib(nibName: "TeamTaskTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cells.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TeamTaskTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TeamTaskTableViewCell
        let currentCell = cells[indexPath.row]
        cell.dateLabel?.text = currentCell.date
        cell.groupTitleLabel?.text = currentCell.groupTitle
        cell.taskLabel?.text = currentCell.task
        cell.taskNumLabel?.text = currentCell.numOfTask

        return cell
    }
    
//
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
