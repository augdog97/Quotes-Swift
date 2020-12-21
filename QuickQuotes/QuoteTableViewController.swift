//
//  QuoteTableViewController.swift
//  QuickQuotes
//
//  Created by Auggie shah on 12/20/20.
//

/*
	1. Declared the quotes variable to an array of strings
	2. Setting the number of sections the table view has to 1
	3. Setting the number of rows that the section has to the number of strings in the array
	4. cellForRowAt is the method that configures how the rows are displayed. Rows = cells
		- UITableViewCell is a method that returns a single row. We defined a variable of cell to equal UITableViewCell.
		- Set "cell" with textlabel with the optional operator "?".
		- Set textLabels "text" property to equal indexPath.row
			- indexPath.row contains which row cellForRowAt is currently called for. first row = indexPath.row will return 0.
			- This allows us to use the array index t refer to each of the corresponding elements in the array.
*/

import UIKit

class QuoteTableViewController: UITableViewController {
	var quotes = ["A mile of road will take you a mile, but a mile of runway will take you anywhere", "There is nothing permanent, only temporary", "You cannot shake hands in 2020", "Lord, make me your instrument", "Those quotes are stupid af!"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
		return quotes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = UITableViewCell()
		cell.textLabel?.text = quotes[indexPath.row]
        return cell
    }
    

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
