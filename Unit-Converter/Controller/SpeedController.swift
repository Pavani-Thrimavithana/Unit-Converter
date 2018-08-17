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
        self.fpminValue = (mps * 1)
        self.kmphValue = (mps * 1)
        self.mphValue = (mps * 1 )
    }
    
    func fpminTo(_ fpmin:Double){
        self.mpsValue = (fpmin * 1)
        self.kmphValue = (fpmin * 1)
        self.mphValue = (fpmin * 1 )
    }
    
    func kmphTo(_ kmph:Double) {
        self.mpsValue = (kmph * 1)
        self.fpminValue = (kmph * 1)
        self.mphValue = (kmph * 1 )
    }
    
    func mphTo(_ mph:Double) {
        self.mpsValue = (mph * 1)
        self.fpminValue = (mph * 1)
        self.kmphValue = (mph * 1)
    }
}
