//
//  ViewController.swift
//  TipCalculator
//
//  Created by Josh Tav on 12/16/18.
//  Copyright © 2018 Josh Tav. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any)
    {
        // dismiss keyboard when user clicks
        // screen
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any)
    {
        // let essentially means constant
        
        let tipPercentages = [0.10, 0.15, 0.20]
        
        // If user input is a valid double, return
        // that, otherwise return 0
        let bill = Double(billField.text!) ?? 0
        
        let tipPercentage = tipControl.selectedSegmentIndex
        let tip = bill * tipPercentages[tipPercentage]
        let total = bill + tip
        
        // similar to python formatting:
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

