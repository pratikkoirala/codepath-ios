//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Pratik Koirala on 12/14/16.
//  Copyright © 2016 Pratik Koirala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var chooseTipPercent: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func calculateTipAmount(_ sender: AnyObject) {
        
        let availablePercentages = [0.15, 0.20, 0.25]
        // Calculate tip and total
        let bill = Double(billField.text!) ?? 0
        let tip = availablePercentages[chooseTipPercent.selectedSegmentIndex] * bill
        let total = bill + tip
        
        // Update the display with the calculated amounts
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
 
    // Remove keyboard display when tapped outside the edit box
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
 
}

