//
//  ViewController.swift
//  Alcohol intake
//
//  Created by ドコモ on 2017/01/08.
//  Copyright © 2017年 Keita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func Intake(forPercentage percentge:Double, amount:Double) -> Double{
        let result = percentge * amount
        return result
    }
    
    @IBAction func drinkBeer(_ sender: Any)  {
        let beer = Intake(forPercentage:0.05, amount:2)
        var resultValue:Double = 0
        resultValue += resultValue + beer
        print(resultValue)
        
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

