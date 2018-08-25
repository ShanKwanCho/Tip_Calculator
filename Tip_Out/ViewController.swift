//
//  ViewController.swift
//  Tip_Out
//
//  Created by ShanCho on 8/25/18.
//  Copyright © 2018 ShanCho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercentages = [0.18, 0.20, 0.25]
        
        let bill = Double(billField.text!) ?? 0 // return 0 if input field detect beside numerical numbers ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex] // to know tipPercentages which return prober value through array: 18% 0, 20% 1, 25% 2 in array
        
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip) // powerful version to control formatting decimal places
        totalLabel.text = String(format: "$%.2f", total) // .2f means 0.2 decimal places after period
        
        /** // $\()  effect for only one version to control formatting decimal places
         tipLabel.text = "$\(tip)" // "\()" = special syntax anything in bracket changes whatever variables
         totalLabel.text = "$\(total)"
         **/
        
        /** // regullar show up on UI <static numbers>
         tipLabel.text = "$10.00"
         totalLabel.text = "$100.00"
         **/
        
  
    }
}

