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
    
    func getSelectedTip() -> Float {
        return selectedTip ?? 0.0
    }
    
    mutating func setSelectedTip(_ selectedTip: Float) {
        self.selectedTip = selectedTip
    }
}
