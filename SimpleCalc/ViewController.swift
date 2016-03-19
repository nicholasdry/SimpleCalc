//
//  ViewController.swift
//  SimpleCalc
//
//  Created by Nicholas Dry on 3/18/16.
//  Copyright © 2016 Nicholas Dry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentNum:Double = 0
    var total:Double = 0.0
    var method:Int = 0
    
    @IBOutlet var display: UILabel!
    @IBOutlet var ticker: UITextField!
    var expression = ""

    
    @IBAction func one(sender: AnyObject) {
        currentNum *= 10;
        currentNum += 1;
        display.text = String(Int(currentNum))
        expression += "1"
        ticker.text = expression
        
    }
    @IBAction func two(sender: AnyObject) {
        
        currentNum *= 10;
        currentNum += 2;
        display.text = String(Int(currentNum))
        expression += "2"
        ticker.text = expression
        
    }
    @IBAction func three(sender: AnyObject) {
        
        currentNum *= 10;
        currentNum += 3;
        display.text = String(Int(currentNum))
        expression += "3"
        ticker.text = expression
        
    }
    @IBAction func four(sender: AnyObject) {
        
        currentNum *= 10;
        currentNum += 4;
        display.text = String(Int(currentNum))
        expression += "4"
        ticker.text = expression
        
    }
    @IBAction func five(sender: AnyObject) {
        
        currentNum *= 10;
        currentNum += 5;
        display.text = String(Int(currentNum))
        expression += "5"
        ticker.text = expression
        
    }
    @IBAction func six(sender: AnyObject) {
        
        currentNum *= 10;
        currentNum += 6;
        display.text = String(Int(currentNum))
        expression += "6"
        ticker.text = expression
        
    }
    @IBAction func seven(sender: AnyObject) {
        
        currentNum *= 10;
        currentNum += 7;
        display.text = String(Int(currentNum))
        expression += "7"
        ticker.text = expression
        
    }
    @IBAction func eight(sender: AnyObject) {
        
        currentNum *= 10;
        currentNum += 8;
        display.text = String(Int(currentNum))
        expression += "8"
        ticker.text = expression
        
    }
    @IBAction func nine(sender: AnyObject) {
        
        currentNum *= 10;
        currentNum += 9;
        display.text = String(Int(currentNum))
        expression += "9"
        ticker.text = expression
        
    }
    @IBAction func zero(sender: AnyObject) {
        
        currentNum *= 10;
        currentNum += 0;
        display.text = String(Int(currentNum))
        expression += "9"
        ticker.text = expression
        
    }
    @IBAction func clear(sender: AnyObject) {
        
        total = 0
        currentNum = 0
        display.text = "0"
        expression = ""
        ticker.text = expression
        
    }
    
    @IBAction func add(sender: AnyObject) {
        method = 1
        total = currentNum
        currentNum = 0
        expression += " + "
        ticker.text = expression
    }
    @IBAction func subtract(sender: AnyObject) {
        method = 2
        total = currentNum
        currentNum = 0
        expression += " - "
        ticker.text = expression
    }
    @IBAction func multiply(sender: AnyObject) {
        method = 3
        total = currentNum
        currentNum = 0
        expression += " * "
        ticker.text = expression
    }
    @IBAction func divide(sender: AnyObject) {
        method = 4
        total = currentNum
        currentNum = 0
        expression += " / "
        ticker.text = expression
    }
    @IBAction func mod(sender: AnyObject) {
        method = 5
        total = currentNum
        currentNum = 0
        expression += " % "
        ticker.text = expression
    }
    
    
    
    @IBAction func finalize(sender: AnyObject) {
        
        if (method == 1) {
            let final:Double = total + currentNum
            display.text = String(final)
        } else if (method == 2) {
            let final:Double = total - currentNum
            display.text = String(final)
        } else if (method == 3) {
            let final:Double = total * currentNum
            display.text = String(final)
        } else if (method == 4) {
            let final:Double = total / currentNum
            display.text = String(final)
        } else if (method == 5) {
            let final:Double = total % currentNum
            display.text = String(final)
        }
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

