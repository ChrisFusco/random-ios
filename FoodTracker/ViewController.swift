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
    @IBOutlet weak var listnog: UILabel!
    @IBOutlet weak var nig: UILabel!
    @IBOutlet weak var textnog: UITextView!
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
        mealNameLabel.text = nameTextField.text
        //listnog.beginUpdates()
        //listnog.insertRows(at: [IndexPath(row: nigArray.count, section: 0)], with: .automatic)
        textnog.text?.append(" " + nameTextField.text! + "\n")
        listnog.text = nameTextField.text
        nameTextField.text = ""
    }
    @IBAction func
        clearList(_ sender: UIButton) {
        textnog.text = ""
    }
    
}


