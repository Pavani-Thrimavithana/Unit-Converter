//
//  TemperatureViewController.swift
//  Unit-Converter
//
//  Created by Mac on 8/16/18.
//  IT15126870-P.Y.Thrimavithana
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    //Get refernces of UITextView
    @IBOutlet weak var celciusValue: UITextField!
    @IBOutlet weak var fahrenheitValue: UITextField!
    @IBOutlet weak var kelvinValue: UITextField!
    
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
    
    @IBAction func celciusTo(_ sender: Any) {
        //Get the value of input from UITextView in variable
        let inputCelciusValue = Double(celciusValue.text!)
        
        //Use the input value for conversion
        if inputCelciusValue != nil{
            //Create an instance
            let temperaturController = TemperatureController()
            temperaturController.celciusTo(inputCelciusValue!)
            self.fahrenheitValue.text = String(format: "%.5f",temperaturController.fahrenheitValue)
            self.kelvinValue.text = String(format: "%.5f",temperaturController.kelvinValue)
        }
        else{
            clearAll()
        }
    }
    
    @IBAction func fahrenheitTo(_ sender: Any) {
        let inputFahrenheitValue = Double(fahrenheitValue.text!)
        
        if inputFahrenheitValue != nil{
            let temperaturController = TemperatureController()
            temperaturController.fahrenheitTo(inputFahrenheitValue!)
            self.celciusValue.text = String(format: "%.5f",temperaturController.celciusValue)
            self.kelvinValue.text =  String(format: "%.5f",temperaturController.kelvinValue)
        }
        else{
            clearAll()
        }
    }
    
    @IBAction func kelvinTo(_ sender: Any) {
        let inputKelvinValue = Double(kelvinValue.text!)
        
        if inputKelvinValue != nil{
            let temperaturController = TemperatureController()
            temperaturController.kelvinTo(inputKelvinValue!)
            self.celciusValue.text = String(format: "%.5f",temperaturController.celciusValue)
            self.fahrenheitValue.text = String(format: "%.5f",temperaturController.fahrenheitValue)
        }
        else{
            clearAll()
        }
    }
    
    //Function to clear all the TextFields
    func clearAll(){
        celciusValue.text = ""
        fahrenheitValue.text = ""
        kelvinValue.text = ""
    }
    
    @IBAction func onEditCelcius(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func onEditFahrenheit(_ sender: Any) {
         clearAll()
    }
    
    @IBAction func onEditKelvin(_ sender: Any) {
         clearAll()
    }
    
    //Hide the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    //Hide statusbar
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
