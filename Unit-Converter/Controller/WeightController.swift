//
//  WeightController.swift
//  Unit-Converter
//
//  Created by Mac on 8/15/18.
//  IT15126870-P.Y.Thrimavithana
//  Copyright © 2018 Mac. All rights reserved.

import Foundation
class WeightController{
    //Property
    var gramValue: Double = 0.0
    var kilogramValue: Double = 0.0
    var poundValue: Double = 0.0
    var ounceValue: Double = 0.0
    
    //Methods
    func gramTo(_ gram:Double){
        self.kilogramValue = (gram * 0.001)
        self.poundValue = (gram * 0.00220462)
        self.ounceValue = (gram * 0.035274)
    }
    func kilogramTo(_ kilogram:Double) {
        self.gramValue = (kilogram * 1000)
        self.poundValue = (kilogram * 2.20462)
        self.ounceValue = (kilogram * 35.274)
    }
    
    func poundTo(_ pound:Double) {
        self.gramValue = (pound * 453.592)
        self.kilogramValue = (pound * 0.453592)
        self.ounceValue = (pound * 16)
    }
    func ounceTo(_ ounce:Double) {
        self.gramValue = (ounce * 28.3495)
        self.kilogramValue = (ounce * 0.0283495)
        self.poundValue = (ounce * 0.0625)
    }
}
