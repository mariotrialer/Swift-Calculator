//
//  ViewController.swift
//  Calculator
//
//  Created by Mario Weidler on 26.03.15.
//  Copyright (c) 2015 Mario Weidler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Define the Outlets
    @IBOutlet weak var fieldFirstValue: UITextField!
    @IBOutlet weak var fieldSecondValue: UITextField!
    @IBOutlet weak var fieldOperator: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultField: UITextField!
    
    //Define the helpers
    var converter = ConverterUtil()
    
    //Gets called after the View was created
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //In case of loss of memory
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    //Gets called when the Calculate-Button was clicked
    @IBAction func calcButtonClicked(sender: AnyObject) {
        
        var calculation = Calculation()
        calculation.firstValue = converter.stringToDouble(fieldFirstValue.text)
        calculation.secondValue = converter.stringToDouble(fieldSecondValue.text)
        calculation.calculationOperator = fieldOperator.text
        
        var result : Double = calculation.calculate()
        
        resultField.text = converter.doubleToString(result)
        
    }
    
    //Gets called when the Clear-Button was pressed
    @IBAction func clearButtonPressed(sender: AnyObject) {
        
        clearFields()
        
    }
    
    //This function clears the input-fields
    func clearFields(){
        fieldFirstValue.text = ""
        fieldSecondValue.text = ""
        fieldOperator.text = ""
    }

}


