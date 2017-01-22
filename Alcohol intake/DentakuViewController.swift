//
//  DentakuViewController.swift
//  Alcohol intake
//
//  Created by ドコモ on 2017/01/22.
//  Copyright © 2017年 Keita. All rights reserved.
//

import UIKit

class DentakuViewController: UIViewController {


    @IBOutlet weak var prevlabel: UILabel!
    @IBOutlet weak var textlabel: UILabel!
    @IBOutlet weak var symbollabel: UILabel!
    @IBOutlet weak var answerlabel: UILabel!
   
    var answer:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    prevlabel.text = ""
    textlabel.text = ""
    symbollabel.text = ""
    answerlabel.text = ""
    }
    
//数字を取得
    @IBAction func getnum(_ sender: UIButton) {
        textlabel.text! += sender.titleLabel!.text!
    }

//記号を取得
    @IBAction func getsymbol(_ sender: UIButton) {
        prevlabel .text = textlabel.text
        textlabel.text = ""
        symbollabel.text! = sender.titleLabel!.text!
    }

//「＝」タップで四則演算
    @IBAction func getequal(_ sender: UIButton) {
        
        //prevに値が入っていない、もしくはtextに値が入っていない場合を除き四則演算可能
        if Int(prevlabel.text!) != nil && Int(textlabel.text!) != nil {
            //四則演算の分岐
            if symbollabel.text == "＋" {
                answer = Int(Int(prevlabel.text!)! + Int(textlabel.text!)!)
                answerlabel.text = String(answer)            }
            
            if symbollabel.text == "−" {
                answer = Int(Int(prevlabel.text!)! - Int(textlabel.text!)!)
                answerlabel.text = String(answer)            }
            
            if symbollabel.text == "×" {
                answer = Int(Int(prevlabel.text!)! * Int(textlabel.text!)!)
                answerlabel.text = String(answer)            }
            
            if symbollabel.text == "÷" {
                answer = Int(Int(prevlabel.text!)! / Int(textlabel.text!)!)
                answerlabel.text = String(answer)            }
            
        }

    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
