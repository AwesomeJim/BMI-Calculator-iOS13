//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by James Mbugua on 14/01/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    mutating func calculateBMI(h:Float, w:Float){
        let bmiValue =  w / (h*h)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You are underweight mate. Eat some pies!", color: #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1))
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are healthy mate. Fit as a Fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.6624035239, green: 0, blue: 0.08404419571, alpha: 1))
        }
    }
    
    
    func getBMIValue() -> String {
        let calBmi =  String(format: "%.1f",self.bmi?.value ?? 0.0)
        return calBmi
        
    }
    
    func getAdvice() -> String {
        return self.bmi?.advice ?? "No Advice"
        
    }
    
    func getColor() -> UIColor {
        return self.bmi?.color ?? UIColor.red
        
    }
}
