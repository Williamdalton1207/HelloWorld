//
//  ViewController.swift
//  HelloWorld
//
//  Created by William Dalton on 6/8/16.
//  Copyright © 2016 William Dalton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var cities: [String] = ["Franfort", "New York", "Boston", "Milwaukee", "Charlotte", "Houston", "Atlanta", "Pittsburgh", "Los Angeles", "Oakland", "San Jose"]
    var states: [String] = ["Kentucky", "New York", "Massachusetts", "Wisconsin", "North Carolina", "Texas", "Georgia", "Pennsylvania", "California", "California", "California"]
    var zip: [String] = ["12345", "23456", "34567", "45678", "56789", "13579","01234", "91234", "91245", "92345"]
    @IBOutlet weak var HierarchyZip: UILabel!
    @IBOutlet weak var HierarchyState: UILabel!
    @IBOutlet var myLabel : UILabel!
    @IBOutlet var myTextField : UITextField!
    @IBOutlet weak var nameLabel: UIButton!
    
    @IBOutlet weak var HierarchyName: UILabel!
    
    @IBOutlet weak var HierarchyCity: UILabel!
    @IBOutlet weak var HierarchyAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextField.text = "William"
        myLabel.text = "Hello, " + myTextField.text!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func FindStores(sender: UIButton) {       let x = Int(arc4random_uniform(9) + 1)
        
        while x < 10 {
            HierarchyName.text="Dunkin Donuts #1" +  String(x) +  String(x*5)
            HierarchyAddress.text = x.description + " Main St."
            HierarchyCity.text=cities[x]
            HierarchyState.text=states[x]
            HierarchyZip.text=zip[x]
            break
        }
    }

    @IBAction func buttonTouched(sender: UIButton) {
        //Update button
                myLabel.text = "Hello, " + myTextField.text!
    }
    
    
    
}

