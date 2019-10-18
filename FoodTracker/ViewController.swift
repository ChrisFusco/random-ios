//
//  ViewController.swift
//  FoodTracker
//
//  Created by Chris Fusco on 7/2/19.
//  Copyright © 2019 Chris Fusco. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var nigArray = ["nig", "nog", "nignog"]
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var listnog: UITableView!
    @IBOutlet weak var nig: UILabel!
    enum RowAnimation: Int {
        case right = 1
    }
    struct IndexPath {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }
    

    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        nig.text = nameTextField.text
        
        listnog.beginUpdates()
        listnog.insertRows(at: [IndexPath(row: nigArray.count, section: 0)], with: .automatic)
        
        //listnog.append(" " + nameTextField.text! + "\n")
        nameTextField.text = ""
    }
}

