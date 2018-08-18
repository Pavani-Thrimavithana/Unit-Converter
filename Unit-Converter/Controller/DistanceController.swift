//
//  DistanceController.swift
//  Unit-Converter
//
//  Created by Mac on 8/16/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

class DistanceController{
    //Property
    var metreValue:Double = 0.0
    var footValue:Double = 0.0
    var yardValue:Double = 0.0
    var kilometreValue:Double = 0.0
    var mileValue:Double = 0.0
    
    //Methods
    func metreTo(_ metre:Double) {
        self.footValue = (metre/0.3084)
        self.yardValue = (metre*1.093613)
        self.kilometreValue = (metre/1000)
        self.mileValue = (metre*0.000621371)
    }
    
    func footTo(_ foot:Double){
        self.metreValue = (foot*0.3048)
        self.yardValue = (foot*0.33333)
        self.kilometreValue = (foot/3280.8)
        self.mileValue = (foot/5280)

    }
    
    func yardTo(_ yard:Double){
        self.metreValue = (yard/1.0936)
        self.footValue = (yard*3)
        self.kilometreValue = (yard/1093.6)
        self.mileValue = (yard*0.0005681818)

    }
    
    func kilometreTo(_ kilometre:Double){
        self.metreValue = (kilometre*1000)
        self.footValue = (kilometre*3280.84)
        self.yardValue = (kilometre*1093.613)
        self.mileValue = (kilometre*0.62137)
    }
    
    func mileTo(_ mile:Double){
        self.metreValue = (mile*1609.344)
        self.footValue = (mile*5280)
        self.yardValue = (mile*1760)
        self.kilometreValue = (mile/0.62137)

    }
}
