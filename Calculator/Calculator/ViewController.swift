//
//  ViewController.swift
//  Calculator
//
//  Created by Jason Hitching on 24/09/2019.
//  Copyright © 2019 Jason Hitching. All rights reserved.
//

import UIKit

// Global variable to be used to hold a string of user inputted equation
var Equation = ""

class ViewController: UIViewController {

    // Action functions connecting all calculator digit buttons
    @IBAction func NumberZero(_ sender: Any) {
        Equation = Equation + "0"
        CalcDisplay.text = Equation }
    
    @IBAction func NumberOne(_ sender: Any) {
        Equation = Equation + "1"
        CalcDisplay.text = Equation }
    
    @IBAction func NumberTwo(_ sender: Any) {
        Equation = Equation + "2"
        CalcDisplay.text = Equation }
    
    @IBAction func NumberThree(_ sender: Any) {
        Equation = Equation + "3"
        CalcDisplay.text = Equation }
    
    @IBAction func NumberFour(_ sender: Any) {
        Equation = Equation + "4"
        CalcDisplay.text = Equation }
    
    @IBAction func NumberFive(_ sender: Any) {
        Equation = Equation + "5"
        CalcDisplay.text = Equation }
    
    @IBAction func NumberSix(_ sender: Any) {
        Equation = Equation + "6"
        CalcDisplay.text = Equation }
    
    @IBAction func NumberSeven(_ sender: Any) {
        Equation = Equation + "7"
        CalcDisplay.text = Equation }
    
    @IBAction func NumberEight(_ sender: Any) {
        Equation = Equation + "8"
        CalcDisplay.text = Equation }
    
    @IBAction func NumberNine(_ sender: Any) {
        Equation = Equation + "9"
        CalcDisplay.text = Equation }
    
    @IBAction func ClearDisplay(_ sender: Any) {
        Equation = ""
        CalcDisplay.text = Equation
    }
    
    
    // Action functions to connect mathematical operators
    @IBAction func Addition(_ sender: Any) {
        Equation = Equation + "+"
        CalcDisplay.text = Equation
    }
    
    @IBAction func Minus(_ sender: Any) {
        Equation = Equation + "-"
        CalcDisplay.text = Equation
    }
    
    @IBAction func Multiplication(_ sender: Any) {
        Equation = Equation + "*"
        CalcDisplay.text = Equation
    }
    
    @IBAction func Division(_ sender: Any) {
        Equation = Equation + "/"
        CalcDisplay.text = Equation
    }
    
    // Function to evaluate the user inputted equation
    @IBAction func Equals(_ sender: Any) {
        let mathExpression = NSExpression(format: Equation)
        if let result = mathExpression.expressionValue(with: nil, context: nil) as? Int {
        CalcDisplay.text = String(result)
        } else {
            CalcDisplay.text = String("Error")
        }
    }
    
    
    @IBOutlet weak var CalcDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

