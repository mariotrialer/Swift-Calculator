//
//  Calculation.swift
//  Calculator
//
//  Created by Mario Weidler on 27.03.15.
//  Copyright (c) 2015 Mario Weidler. All rights reserved.
//

import Foundation

class Calculation {
    
    var firstValue : Double
    var secondValue : Double
    var calculationOperator : String
    
    //Stößt die Berechnung an
    func calculate() -> Double{
        
        var result : Double = 0.0
        
        if(self.calculationOperator == "+"){
           result = add()
        }else if(self.calculationOperator == "-"){
            result = subtract()
        }else if(self.calculationOperator == "/"){
            result = divide()
        }else if(self.calculationOperator == "x"){
            result = multiply()
        }else{
            DialogUtil().buildInvalidOperatorDialog()
        }
        
        return result
    }
    
    //Set the numbers to 0 and the default operator to ""
    init(){
        self.firstValue = 0.0
        self.secondValue = 0.0
        self.calculationOperator = ""
    }
    
    //Addiert die beiden Werte
    func add() -> Double {
        
        return self.firstValue + self.secondValue
        
    }
    
    //Subtrahiert die beiden Werte
    func subtract() -> Double {
        
        return self.firstValue - self.secondValue
        
    }
    
    //Multipliziert die beiden Werte
    func multiply() -> Double {
        
        return self.firstValue * self.secondValue
        
    }
    
    //Dividiert die beiden Werte
    func divide() -> Double {
        
        return self.firstValue / self.secondValue
        
    }
    
}
