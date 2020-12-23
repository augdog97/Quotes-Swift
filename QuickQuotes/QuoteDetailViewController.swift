//
//  QuoteDetailViewController.swift
//  QuickQuotes
//
//  Created by Auggie shah on 12/21/20.
//


/*
	1. Declared variable quote and set it to have value of an empty string
	2. Created an outlet for the label. Connecting the label to the view controller.
	3. quoteLabel is in did load so that it shows the quote after the page loads 
*/

import UIKit

class QuoteDetailViewController: UIViewController {

	var quote = ""
	
	
	@IBOutlet weak var quoteLabel: UILabel!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		quoteLabel.text = quote
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
