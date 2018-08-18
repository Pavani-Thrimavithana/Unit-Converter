//
//  TemperatureController.swift
//  Unit-Converter
//
//  Created by Mac on 8/16/18.
//  IT15126870-P.Y.Thrimavithana
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

class TemperatureController {
    //Property
    var celciusValue:Double = 0.0
    var fahrenheitValue:Double = 0.0
    var kelvinValue:Double = 0.0
    
    //Methods
    func celciusTo(_ celcius:Double) {
        self.fahrenheitValue = ((celcius*1.8)+32)
        self.kelvinValue = (celcius+273.15)
    }
    func fahrenheitTo(_ fahrenheit:Double) {
        self.celciusValue = ((fahrenheit-32)/(1.8))
        self.kelvinValue = ((fahrenheit+459.67)*(5/9))
    }
    func kelvinTo(_ kelvin:Double) {
        self.celciusValue = (kelvin-273.15)
        self.fahrenheitValue = ((kelvin*1.8)-459.67)
    }
}
