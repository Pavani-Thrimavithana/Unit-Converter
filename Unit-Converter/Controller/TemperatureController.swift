//
//  TemperatureController.swift
//  Unit-Converter
//
//  Created by Mac on 8/16/18.
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
        self.fahrenheitValue = (celcius * 33.8)
        self.kelvinValue = (celcius * 274.15)
    }
    func fahrenheitTo(_ fahrenheit:Double) {
        self.celciusValue = (fahrenheit * -17.2222)
        self.kelvinValue = (fahrenheit * 274.928)
    }
    func kelvinTo(_ kelvin:Double) {
        self.celciusValue = (kelvin * -272.15)
        self.kelvinValue = (kelvin * -457.87)
    }
}
