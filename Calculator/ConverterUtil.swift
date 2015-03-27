//
//  ConverterUtil.swift
//  Calculator
//
//  Created by Mario Weidler on 27.03.15.
//  Copyright (c) 2015 Mario Weidler. All rights reserved.
//

import Foundation

class ConverterUtil {
    
    //Converts a given double to String
    func doubleToString(value: Double) -> String {
        
        return String(format: "%.1f", value)
    }
    
    //Converts a given String to double
    func stringToDouble(value: String) -> Double {
        
        var doubleValue : Double = NSString(string: value).doubleValue
        
        return doubleValue
    }
    
}