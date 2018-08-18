//
//  SpeedController.swift
//  Unit-Converter
//
//  Created by Mac on 8/16/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

class SpeedController{
    //Property
    var mpsValue: Double = 0.0
    var fpminValue: Double = 0.0
    var kmphValue: Double = 0.0
    var mphValue: Double = 0.0
    
    //Method
    func mpsTo(_ mps:Double){
        self.fpminValue = (mps*196.8504)
        self.kmphValue = (mps*3.6)
        self.mphValue = (mps*2.236936)
    }
    
    func fpminTo(_ fpmin:Double){
        self.mpsValue = (fpmin/196.8504)
        self.kmphValue = (fpmin/54.68066)
        self.mphValue = (fpmin/88)
    }
    
    func kmphTo(_ kmph:Double) {
        self.mpsValue = (kmph/3.6)
        self.fpminValue = (kmph*54.68066)
        self.mphValue = (kmph/1.609344)
    }
    
    func mphTo(_ mph:Double) {
        self.mpsValue = (mph/2.236936)
        self.fpminValue = (mph*88)
        self.kmphValue = (mph*1.609344)
    }
}
