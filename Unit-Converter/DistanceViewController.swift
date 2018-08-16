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
    }
    
    @IBAction func footTo(_ sender: Any) {
    }
    
    @IBAction func yardTo(_ sender: Any) {
    }
    
    @IBAction func kilometreTo(_ sender: Any) {
    }
    
    @IBAction func mileTo(_ sender: Any) {
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
    
}
