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
        self.kilogramValue = (gram/1000)
        self.poundValue = (gram/453.59237)
        self.ounceValue = (gram/28.34952)
    }
    func kilogramTo(_ kilogram:Double) {
        self.gramValue = (kilogram*1000)
        self.poundValue = (kilogram/0.45359237)
        self.ounceValue = (kilogram/0.02834952)
    }
    
    func poundTo(_ pound:Double) {
        self.gramValue = (pound*453.59237)
        self.kilogramValue = (pound*0.45359237)
        self.ounceValue = (pound*16)
    }
    func ounceTo(_ ounce:Double) {
        self.gramValue = (ounce*28.34952)
        self.kilogramValue = (ounce*0.0283495)
        self.poundValue = (ounce/16)
    }
}
