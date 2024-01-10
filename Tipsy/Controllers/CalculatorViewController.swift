//
//  ViewController.swift
//  Tipsy
//
//  Created by Abdul Basit on 10/01/2024.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UIStackView!
    
    var selectedTipPercentage: Double?
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        if sender.titleLabel?.text == "0%" {
            zeroPctButton.isSelected = true
            selectedTipPercentage = 0.0
        }else if sender.titleLabel?.text == "10%" {
            tenPctButton.isSelected = true
            selectedTipPercentage = 0.1
        }else {
            twentyPctButton.isSelected = true
            selectedTipPercentage = 0.2
        }
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(selectedTipPercentage!)
    }

}

