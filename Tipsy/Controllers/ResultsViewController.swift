//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Gokul Ramakrishnan on 1/25/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var total: String?
    var calculatorBrain: CalculatorBrain?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = total
        let splitPersons = calculatorBrain?.getSplitPersons() ?? 2
        let selectedTip = calculatorBrain?.getSelectedTip() ?? 0.2
        settingsLabel.text = "Split between \(splitPersons) people, with a \(selectedTip*100)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
