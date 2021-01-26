//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()


    @IBAction func tipChanged(_ sender: UIButton) {
        resetSelectedTip()
        sender.isSelected = true
        
        if sender.titleLabel!.text == "0%" {
            calculatorBrain.setSelectedTip(0.0)
        }
        
        if sender.titleLabel!.text == "10%" {
            calculatorBrain.setSelectedTip(0.1)
        }
        
        if sender.titleLabel!.text == "20%" {
            calculatorBrain.setSelectedTip(0.2)
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        calculatorBrain.setSplitPersons(sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.setAmount(Float(billTextField.text!)!)
        self.performSegue(withIdentifier: "getResultSegue", sender: self)
    }
    
    func resetSelectedTip() {
        billTextField.endEditing(true)
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.total = calculatorBrain.getResult()
        destinationVC.calculatorBrain = calculatorBrain
    }
}

