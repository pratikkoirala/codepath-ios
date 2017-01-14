//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Pratik Koirala on 12/18/16.
//  Copyright © 2016 Pratik Koirala. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    @IBOutlet weak var defaultTipPercent: UISegmentedControl!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        defaultTipPercent.selectedSegmentIndex = defaults.integer(forKey: "defaultTipIndex")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveDefaultTipPercentage(_ sender: Any) {
        defaults.set(defaultTipPercent.selectedSegmentIndex, forKey: "defaultTipIndex")
        defaults.synchronize()
        
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
