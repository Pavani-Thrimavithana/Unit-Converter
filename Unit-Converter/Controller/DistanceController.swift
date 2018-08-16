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
        self.footValue = (metre * 3.28084)
        self.yardValue = (metre * 1.09361)
        self.kilometreValue = (metre * 0.001)
        self.mileValue = (metre * 0.000621371)
    }
    
    func footTo(_ foot:Double){
        self.metreValue = (foot * 1)
        self.yardValue = (foot * 1)
        self.kilometreValue = (foot * 1)
        self.mileValue = (foot * 1)

    }
    
    func yardTo(_ yard:Double){
        self.metreValue = (yard * 1)
        self.footValue = (yard * 1)
        self.kilometreValue = (yard * 1)
        self.mileValue = (yard * 1)

    }
    
    func kilometreTo(_ kilometre:Double){
        self.metreValue = (kilometre * 1)
        self.footValue = (kilometre * 1)
        self.yardValue = (kilometre * 1)
        self.mileValue = (kilometre * 1)
    }
    
    func mileTo(_ mile:Double){
        self.metreValue = (mile * 1)
        self.footValue = (mile * 1)
        self.yardValue = (mile * 1)
        self.kilometreValue = (mile * 1)

    }
}
