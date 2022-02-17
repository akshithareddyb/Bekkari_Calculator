//
//  ViewController.swift
//  Bekkari_Calculator
//
//  Created by Bekkari,Akshitha on 2/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var calcOperator:String = ""
    var num:Int = 0
    var num1:Double = 0.0
    var num2:Int = 0
    var num3:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func buttonAC(_ sender: UIButton) {
        displayLabel.text! = ""
        calcOperator = ""
        num = 0
        num2 = 0
        num1 = 0.0
        num3 = 0.0
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        displayLabel.text! = ""
        
    }
    
    @IBAction func buttonsignchange(_ sender: UIButton) {
        if(displayLabel.text!.first == "-"){
            displayLabel.text!.removeFirst()
        }
        else
        {
            displayLabel.text! = "-\(displayLabel.text!)"
        }
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        if(!displayLabel.text!.isEmpty){
             
            if(displayLabel.text!.contains(".")){
                num1=Double(displayLabel.text!)!
            }
            else{
                num=Int(displayLabel.text!)!
            }
            calcOperator = "/"
            displayLabel.text = ""
        }
        else
        {
            //calcOperator = "-"
            displayLabel.text = "/"
        }
    }

    @IBAction func button7(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "7"
    }
    
    @IBAction func button8(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "8"
    }
    
    @IBAction func button9(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "9"
    }
    
    @IBAction func buttonmultiply(_ sender: UIButton) {
        if(!displayLabel.text!.isEmpty){
            if(displayLabel.text!.contains(".")){
                num1=Double(displayLabel.text!)!
            }
            else{
                num=Int(displayLabel.text!)!
            }
            calcOperator = "*"
            displayLabel.text = ""
        }
        else
        {
            //calcOperator = "-"
            displayLabel.text = "*"
        }
    }
    
    @IBAction func button4(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "4"
    }
    
    @IBAction func button5(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "5"
    }
    @IBAction func button6(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "6"
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        //num = (displayLabel.text! as NSString).integerValue
        //displayLabel.text = "-"
        if(!displayLabel.text!.isEmpty){
            if(displayLabel.text!.contains(".")){
                num1=Double(displayLabel.text!)!
            }
            else{
                num=Int(displayLabel.text!)!
            }
            calcOperator = "-"
            displayLabel.text = ""
        }
        else
        {
            //calcOperator = "-"
            displayLabel.text = "-"
        }
        
    }
    
    @IBAction func button1(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "1"
    }
    
    @IBAction func button2(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "2"
    }
    
    @IBAction func button3(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "3"
    }
    @IBAction func buttonplus(_ sender: UIButton) {
        if(!displayLabel.text!.isEmpty){
            if(displayLabel.text!.contains(".")){
                num1=Double(displayLabel.text!)!
            }
            else{
                num=Int(displayLabel.text!)!
            }
            calcOperator = "+"
            displayLabel.text = ""
        }
        else
        {
            //calcOperator = "-"
            displayLabel.text = "+"
        }
    }
    
    @IBAction func button0(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "0"

        }
    @IBAction func buttonpoint(_ sender: UIButton) {
        displayLabel.text! = displayLabel.text! + "."
        

    }
    
    @IBAction func buttonmodulus(_ sender: UIButton) {
        if(!displayLabel.text!.isEmpty){
            if(displayLabel.text!.contains("."))
            {
                num1 = Double(displayLabel.text!)!
            }
            else {
                num = Int(displayLabel.text!)!
            }
            calcOperator = "%"
            displayLabel.text = ""
         }
    }
    
    @IBAction func buttonequals(_ sender: UIButton) {
       //displayLabel.text = "="
        
        if(!(displayLabel.text!.isEmpty)){
            if(displayLabel.text!.contains(".")){
                num3 =  Double(displayLabel.text!)!
                if(!(num3==0.0))
                {
                    var a = 0.0
                    switch(calcOperator){
                    case "+": a = num1 + num3
                        if(a.truncatingRemainder(dividingBy: 1)==0) {
                             displayLabel.text! = "\(Int(a))"
                        }
                       else{
                            displayLabel.text! = "\(a)"
                           }
                                               
                    case "-": displayLabel.text! = "\(num1 - num3)"
                        
                    case "*": displayLabel.text! = "\(num1 * num3)"
                        
                    case "/": displayLabel.text! = "\(num1 / num3)"
                        
                    case "%": displayLabel.text! = "\(Double(round(num1.truncatingRemainder(dividingBy:num3)*10)/10))"
                        
                    default: displayLabel.text! = ""
                }
                }
            }
                
        else{
            num2 = (displayLabel.text! as NSString).integerValue
            if(!(num2==0)){
                switch(calcOperator){
                case "+": displayLabel.text! = "\(num + num2)"
                    
                case "-": displayLabel.text! = "\(num - num2)"
                    
                case "*": displayLabel.text = "\(num * num2)"
                    
                case "/": displayLabel.text = "\(round((Double(num))/(Double(num2))*100000)/100000)"
                    
                case "%": displayLabel.text = "\(num % num2)"
                    
                default: displayLabel.text = ""
            }
            }
            else
            {
                displayLabel.text = "ERROR"
             }
           }
        }

    }
}

