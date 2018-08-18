//
//  WeightViewController.swift
//  Unit-Converter
//
//  Created by Mac on 8/15/18.
//  Copyright © 2018 Mac. All rights reserved.
//
import UIKit

class WeightViewController: UIViewController {
    
    // Get reference of UITextView
    @IBOutlet weak var gramValue: UITextField!
    @IBOutlet weak var kilogramValue: UITextField!
    @IBOutlet weak var poundValue: UITextField!
    @IBOutlet weak var ounceValue: UITextField!
    
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

    @IBAction func gramTo(_ sender: Any) {
        //Get value of input from UITextView in variable
    
        let inputGramValue = Double(gramValue.text!)
         
        //Use the input value for conversion
        if inputGramValue != nil{
            //Create an instance
            let weightController = WeightController()
            weightController.gramTo(gram: inputGramValue!)
            self.kilogramValue.text = String(format: "%.5f",weightController.kilogramValue)
            self.poundValue.text = String(format: "%.5f",weightController.poundValue)
            self.ounceValue.text = String(format: "%.5f",weightController.ounceValue)
        }
        else{
            clearAll()
        }
    }
    
    @IBAction func kilogramTo(_ sender: Any) {
        let inputKilogramValue = Double(kilogramValue.text!)
        
        if inputKilogramValue != nil{
            let weightController = WeightController()
            weightController.kilogramTo(kilogram: inputKilogramValue!)
            self.gramValue.text = String(format: "%.5f",weightController.gramValue)
            self.poundValue.text = String(format: "%.5f",weightController.poundValue)
            self.ounceValue.text = String(format: "%.5f",weightController.ounceValue)
        }
        else{
            clearAll()
        }
    }
    
    @IBAction func poundTo(_ sender: Any) {
        let inputPoundValue = Double(poundValue.text!)
        
        if inputPoundValue != nil{
            let weightController = WeightController()
            weightController.poundTo(pound: inputPoundValue!)
            self.gramValue.text = String(format: "%.5f",weightController.gramValue)
            self.kilogramValue.text = String(format: "%.5f",weightController.kilogramValue)
            self.ounceValue.text = String(format: "%.5f",weightController.ounceValue)
        }
        else{
            clearAll()
        }
    }
    
    @IBAction func ounceTo(_ sender: Any) {
        let inputOuncevalue = Double(ounceValue.text!)
        
        if inputOuncevalue != nil{
            let weightController = WeightController()
            weightController.ounceTo(ounce: inputOuncevalue!)
            self.gramValue.text = String(format: "%.5f",weightController.gramValue)
            self.kilogramValue.text = String(format: "%.5f",weightController.kilogramValue)
            self.poundValue.text = String(format: "%.5f",weightController.poundValue)
        }
        else{
            clearAll()
        }
    }
 
    //Function to clear all the TextFeilds
    func clearAll(){
        gramValue.text = ""
        kilogramValue.text = ""
        poundValue.text = ""
        ounceValue.text = ""
    }
    
    @IBAction func onEditGram(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func onEditKilogram(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func onEditPound(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func onEditOunce(_ sender: Any) {
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
