//
//  ViewController.swift
//  Alcohol intake
//
//  Created by ドコモ on 2017/01/08.
//  Copyright © 2017年 Keita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var resultValue:Double = 0

    @IBOutlet weak var judgement: UILabel!
    
//    //アルコール摂取量に応じて、酔い度合いの判定メッセージを出す関数
//    func calResultValue() -> Double{
//        switch resultValue {
//        case 0 ... 27:
//            judgement.text = "爽快"
//        case 27.1...54:
//            judgement.text = "ほろ酔い"
//        case 54.1...81:
//            judgement.text = "酩酊初期"
//        case 81.1...162:
//            judgement.text = "酩酊"
//        case 162.1...270:
//            judgement.text = "泥酔"
//        default:
//            judgement.text = "昏睡"
//        }
//        return resultValue
//    }
//    
    
    @IBOutlet weak var alcoholIntake: UILabel!

    
//各ドリンクのボタン押下で各そのドリンクを一杯飲んだ時のアルコール量を計算する。またその結果を加算し、合計摂取アルコール量を計算する。
    @IBAction func drinkBeer(_ sender: Any)  {
        let beer:Double = 15
        resultValue = resultValue + beer
        print(resultValue)
        alcoholIntake.text = String(resultValue)
            switch resultValue {
                case 0 ... 27:
                    judgement.text = "爽快"
                case 27.1...54:
                    judgement.text = "ほろ酔い"
                case 54.1...81:
                    judgement.text = "酩酊初期"
                case 81.1...162:
                    judgement.text = "酩酊"
                case 162.1...270:
                    judgement.text = "泥酔"
                default:
                    judgement.text = "昏睡"
        }

    }

    @IBAction func drinkNihonsyu(_ sender: Any) {
        let nihonsyu:Double = 27
        resultValue = resultValue + nihonsyu
        print(resultValue)
        alcoholIntake.text = String(resultValue)
            switch resultValue {
                case 0 ... 27:
                    judgement.text = "爽快"
                case 27.1...54:
                    judgement.text = "ほろ酔い"
                case 54.1...81:
                    judgement.text = "酩酊初期"
                case 81.1...162:
                    judgement.text = "酩酊"
                case 162.1...270:
                    judgement.text = "泥酔"
                default:
                    judgement.text = "昏睡"
        }

    }

 
    @IBAction func drinkSyochu(_ sender: Any) {
        let syochu:Double = 20
        resultValue = resultValue + syochu
        print(resultValue)
        alcoholIntake.text = String(resultValue)
            switch resultValue {
                case 0 ... 27:
                    judgement.text = "爽快"
                case 27.1...54:
                    judgement.text = "ほろ酔い"
                case 54.1...81:
                    judgement.text = "酩酊初期"
                case 81.1...162:
                    judgement.text = "酩酊"
                case 162.1...270:
                    judgement.text = "泥酔"
                default:
                    judgement.text = "昏睡"
        }

    }
    
    @IBAction func drinkWine(_ sender: Any) {
        let wine:Double = 18.75
        resultValue = resultValue + wine
        print(resultValue)
        alcoholIntake.text = String(resultValue)
            switch resultValue {
                case 0 ... 27:
                    judgement.text = "爽快"
                case 27.1...54:
                    judgement.text = "ほろ酔い"
                case 54.1...81:
                    judgement.text = "酩酊初期"
            case 81.1...162:
                    judgement.text = "酩酊"
            case 162.1...270:
                judgement.text = "泥酔"
            default:
                judgement.text = "昏睡"
        }

    }


    @IBAction func drinkHighball(_ sender: Any) {
        let highball:Double = 9.6
        resultValue = resultValue + highball
        print(resultValue)
        alcoholIntake.text = String(resultValue)
            switch resultValue {
                case 0 ... 27:
                    judgement.text = "爽快"
                case 27.1...54:
                    judgement.text = "ほろ酔い"
                case 54.1...81:
                    judgement.text = "酩酊初期"
                case 81.1...162:
                    judgement.text = "酩酊"
                case 162.1...270:
                    judgement.text = "泥酔"
                default:
                    judgement.text = "昏睡"
        }
        
    }
    
    @IBAction func drinkChuhai(_ sender: Any){
    let chuhai:Double = 12.5
    resultValue = resultValue + chuhai
    alcoholIntake.text = String(resultValue)
    print(resultValue)
        switch resultValue {
            case 0 ... 27:
                judgement.text = "爽快"
            case 27.1...54:
                judgement.text = "ほろ酔い"
            case 54.1...81:
                judgement.text = "酩酊初期"
            case 81.1...162:
                judgement.text = "酩酊"
            case 162.1...270:
                judgement.text = "泥酔"
            default:
            judgement.text = "昏睡"
        }
    }

//ここから電卓機能追加。アルコール計算結果に数字をかけたり割ったりできるようにする。日平均や週・月間の値の予測に利用するなど。
//×、÷、数字のボタンを押すと、それぞれの値を取得する。

    
    
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

