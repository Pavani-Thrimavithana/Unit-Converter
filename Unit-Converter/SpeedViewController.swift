//
//  SpeedViewController.swift
//  Unit-Converter
//
//  Created by Mac on 8/16/18.
//  IT15126870-P.Y.Thrimavithana
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    //Get reference of UITextView
    @IBOutlet weak var mpsValue: UITextField!
    @IBOutlet weak var fpminValue: UITextField!
    @IBOutlet weak var kmphValue: UITextField!
    @IBOutlet weak var mphValue: UITextField!
    
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

    @IBAction func mpsTo(_ sender: Any) {
        //Get value of input from UITextView in variable
        let inputMpsValue = Double(mpsValue.text!)
        
        //User the input value for conversion
        if inputMpsValue != nil{
            //Create instance
            let speedController = SpeedController()
            speedController.mpsTo(inputMpsValue!)
            self.fpminValue.text = String(format: "%.5f",speedController.fpminValue)
            self.kmphValue.text = String(format: "%.5f",speedController.kmphValue)
            self.mphValue.text = String(format: "%.5f",speedController.mphValue)
        }
        else{
            clearAll()
        }
    }
    
    @IBAction func fpminTo(_ sender: Any) {
        let inputFpminValue = Double(fpminValue.text!)
        
        if inputFpminValue != nil{
            let speedController = SpeedController()
            speedController.fpminTo(inputFpminValue!)
            self.mpsValue.text = String(format: "%.5f",speedController.mpsValue)
            self.kmphValue.text = String(format: "%.5f",speedController.kmphValue)
            self.mphValue.text = String(format: "%.5f",speedController.mphValue)
        }
        else{
            clearAll()
        }
    }
    
    @IBAction func kmphTo(_ sender: Any) {
        let inputKmphValue = Double(kmphValue.text!)
        
        if inputKmphValue != nil{
            let speedController = SpeedController()
            speedController.kmphTo(inputKmphValue!)
            self.mpsValue.text = String(format: "%.5f",speedController.mpsValue)
            self.fpminValue.text = String(format: "%.5f",speedController.fpminValue)
            self.mphValue.text = String(format: "%.5f",speedController.mphValue)
        }
        else{
            clearAll()
        }
    }
    
    @IBAction func mphTo(_ sender: Any) {
        let inputMphValue = Double(mphValue.text!)
        
        if inputMphValue != nil{
            let speedController = SpeedController()
            speedController.mphTo(inputMphValue!)
            self.mpsValue.text = String(format: "%.5f",speedController.mpsValue)
            self.fpminValue.text = String(format: "%.5f",speedController.fpminValue)
            self.kmphValue.text = String(format: "%.5f",speedController.kmphValue)
        }
        else{
            clearAll()
        }
    }
    
    //Function to clear all the TextFields
    func clearAll(){
        mpsValue.text = ""
        fpminValue.text = ""
        kmphValue.text = ""
        mphValue.text = ""
    }
    
    //On button click call the clearAll()
    @IBAction func onEditMps(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func onEditFpmin(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func onEditKmph(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func onEditMph(_ sender: Any) {
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
