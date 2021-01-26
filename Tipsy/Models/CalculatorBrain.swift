//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Gokul Ramakrishnan on 1/25/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var selectedTip: Float?
    var splitPersons: Int?
    var amount: Float?
    
    func getSelectedTip() -> Float {
        return selectedTip ?? 0.1
    }
    
    func getSplitPersons() -> Int {
        return splitPersons ?? 2
    }
    
    mutating func setSelectedTip(_ selectedTip: Float) {
        self.selectedTip = selectedTip
    }
    
    mutating func setSplitPersons(_ splitPersons: Double) {
        self.splitPersons = Int(splitPersons)
    }
    
    func getAmount() -> Float {
        return amount ?? 0.0
    }
    
    mutating func setAmount(_ amount: Float) {
        self.amount = amount
    }
    
    func getResult() -> String {
        let billSplit = (getAmount() + (getAmount()*getSelectedTip()))/Float(getSplitPersons())
        return String(format: "%.2f", billSplit)
    }
}
