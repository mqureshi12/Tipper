//
//  ViewController.swift
//  Tipper
//
//  Created by Mohammad Qureshi on 7/23/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipAmountSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // Calculate the tip and total labels
        let tip = bill * tipPercentages[tipAmountSegmentedControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}
