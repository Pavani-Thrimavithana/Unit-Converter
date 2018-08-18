//
//  DistanceViewController.swift
//  Unit-Converter
//
//  Created by Mac on 8/16/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    //Get refernces of UITextView
    @IBOutlet weak var metreValue: UITextField!
    @IBOutlet weak var footValue: UITextField!
    @IBOutlet weak var yardValue: UITextField!
    @IBOutlet weak var kilometreValue: UITextField!
    @IBOutlet weak var mileValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func metreTo(_ sender: Any) {
        //Get value of input from UITextView in variable
        let inputMetreValue = Double(metreValue.text!)
        
        //Use the input value for conversion
        if (inputMetreValue != nil){
            //Create an instance
            let distanceController = DistanceController()
            distanceController.metreTo(inputMetreValue!)
            
            self.footValue.text = String(distanceController.footValue)
            self.yardValue.text = String(distanceController.yardValue)
            self.kilometreValue.text = String(distanceController.kilometreValue)
            self.mileValue.text = String(distanceController.mileValue)
        }
    }
    
    @IBAction func footTo(_ sender: Any) {
        let inputFootValue = Double(footValue.text!)
        
        if (inputFootValue != nil){
            let distanceController = DistanceController()
            distanceController.metreTo(inputFootValue!)
            
            self.metreValue.text = String(distanceController.metreValue)
            self.yardValue.text = String(distanceController.yardValue)
            self.kilometreValue.text = String(distanceController.kilometreValue)
            self.mileValue.text = String(distanceController.mileValue)
        }
    }
    
    @IBAction func yardTo(_ sender: Any) {
        let inputYardValue = Double(yardValue.text!)
        
        if (inputYardValue != nil){
            let distanceController = DistanceController()
            distanceController.metreTo(inputYardValue!)
            
            self.metreValue.text = String(distanceController.metreValue)
            self.footValue.text = String(distanceController.footValue)
            self.kilometreValue.text = String(distanceController.kilometreValue)
            self.mileValue.text = String(distanceController.mileValue)
        }
    }
    
    @IBAction func kilometreTo(_ sender: Any) {
        let inputKilometreValue = Double(yardValue.text!)
        
        if (inputKilometreValue != nil){
            let distanceController = DistanceController()
            distanceController.metreTo(inputKilometreValue!)
            
            self.metreValue.text = String(distanceController.metreValue)
            self.footValue.text = String(distanceController.footValue)
            self.yardValue.text = String(distanceController.yardValue)
            self.mileValue.text = String(distanceController.mileValue)
        }
    }
    
    @IBAction func mileTo(_ sender: Any) {
        let inputMileValue = Double(yardValue.text!)
        
        if (inputMileValue != nil){
            let distanceController = DistanceController()
            distanceController.metreTo(inputMileValue!)
            
            self.metreValue.text = String(distanceController.metreValue)
            self.footValue.text = String(distanceController.footValue)
            self.yardValue.text = String(distanceController.yardValue)
            self.kilometreValue.text = String(distanceController.kilometreValue)
        }
    }
    
    //Function to clear all TextFields
    func  clearAll() {
        metreValue.text = ""
        footValue.text = ""
        yardValue.text = ""
        kilometreValue.text = ""
        mileValue.text = ""
    }
    
    @IBAction func onEditMetre(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func onEditFoot(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func onEditYard(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func onEditKilometre(_ sender: Any) {
        clearAll()
    }
    @IBAction func onEditMile(_ sender: Any) {
        clearAll()
    }
    
    //Hide the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
