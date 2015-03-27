//
//  DialogUtil.swift
//  Calculator
//
//  Created by Mario Weidler on 27.03.15.
//  Copyright (c) 2015 Mario Weidler. All rights reserved.
//

import Foundation
import UIKit

class DialogUtil {
    
    func buildAlertDialog(dialogText : String){
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Here's a message"
        alert.addButtonWithTitle("Understod")
        alert.show()
    }
    
    func buildInvalidOperatorDialog(){
        let alert = UIAlertView()
        alert.title = "Fehler"
        alert.message = "Sie haben einen ungültigen Rechenoperator eingegeben"
        alert.addButtonWithTitle("Ok")
        alert.show()
    }
    
}