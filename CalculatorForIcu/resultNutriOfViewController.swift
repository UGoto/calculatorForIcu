//
//  resultNutriOfViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/06.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class resultNutriOfViewController: UIViewController {

    //BEE男性
    @IBOutlet weak var mof: UITextField!
    @IBOutlet weak var mof2: UITextField!
    @IBOutlet weak var mof4: UITextField!
    @IBOutlet weak var mof6: UITextField!
    @IBOutlet weak var mof8: UITextField!
    @IBOutlet weak var mof0: UITextField!
    
    //BEE女性
    @IBOutlet weak var fof: UITextField!
    @IBOutlet weak var fof2: UITextField!
    @IBOutlet weak var fof4: UITextField!
    @IBOutlet weak var fof6: UITextField!
    @IBOutlet weak var fof8: UITextField!
    @IBOutlet weak var fof0: UITextField!
    
    //BMI,体重減少,エネルギー消費量,Nバランス,投与窒素量,窒素排泄量,窒素出納
    @IBOutlet weak var bmi: UITextField!
    @IBOutlet weak var loseWt: UITextField!
    @IBOutlet weak var energy: UITextField!
    @IBOutlet weak var nb: UITextField!
    @IBOutlet weak var giveNi: UITextField!
    @IBOutlet weak var outNi: UITextField!
    @IBOutlet weak var inOutNi: UITextField!
    
    
    //appDelegateのインスタンスの作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    //栄養ページからデータを受け取る
    override func viewDidLoad() {
        super.viewDidLoad()
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 1
        formatter.positiveFormat = "0.0" // "0.##" -> 0パディングしない
        formatter.roundingMode = .floor  //.halfUp  四捨五入 // .floor -> 切り捨て
        
//        //BEE男性の値を出力
        mof.text = formatter.string(from: NSNumber(value:appDelegate.mof))!
        mof2.text = formatter.string(from: NSNumber(value:appDelegate.mof2))!
        mof4.text = formatter.string(from: NSNumber(value:appDelegate.mof4))!
        mof6.text = formatter.string(from: NSNumber(value:appDelegate.mof6))!
        mof8.text = formatter.string(from: NSNumber(value:appDelegate.mof8))!
        mof0.text = formatter.string(from: NSNumber(value:appDelegate.mof0))!
        
         //BEE女性の値を出力
        fof.text = formatter.string(from: NSNumber(value:appDelegate.fof))!
        fof2.text = formatter.string(from: NSNumber(value:appDelegate.fof2))!
        fof4.text = formatter.string(from: NSNumber(value:appDelegate.fof4))!
        fof6.text = formatter.string(from: NSNumber(value:appDelegate.fof6))!
        fof8.text = formatter.string(from: NSNumber(value:appDelegate.fof8))!
        fof0.text = formatter.string(from: NSNumber(value:appDelegate.fof0))!
        
        //栄養その他結果
        bmi.text = formatter.string(from: NSNumber(value:appDelegate.bmi))!
        loseWt.text = formatter.string(from: NSNumber(value:appDelegate.loseWt))!
        energy.text = formatter.string(from: NSNumber(value:appDelegate.ee))!
        nb.text = formatter.string(from: NSNumber(value:appDelegate.nb))!
        giveNi.text = formatter.string(from: NSNumber(value:appDelegate.giveN))!
        outNi.text = formatter.string(from: NSNumber(value:appDelegate.excreteN))!
        inOutNi.text = formatter.string(from: NSNumber(value:appDelegate.casherN))!
        
//        mof.text = String(appDelegate.mof)
//        mof2.text = String(appDelegate.mof2)
//        mof4.text = String(appDelegate.mof4)
//        mof6.text = String(appDelegate.mof6)
//        mof8.text = String(appDelegate.mof8)
//        mof0.text = String(appDelegate.mof0)
        
//        //BEE女性の値を出力
//        fof.text = String(appDelegate.fof)
//        fof2.text = String(appDelegate.fof2)
//        fof4.text = String(appDelegate.fof4)
//        fof6.text = String(appDelegate.fof6)
//        fof8.text = String(appDelegate.fof8)
//        fof0.text = String(appDelegate.fof0)
        
//        //栄養その他結果
//        bmi.text = String(appDelegate.bmi)
//        loseWt.text = String(appDelegate.loseWt)
//        energy.text = String(appDelegate.ee)
//        nb.text = String(appDelegate.nb)
//        giveNi.text = String(appDelegate.giveN)
//        outNi.text = String(appDelegate.excreteN)
//        inOutNi.text = String(appDelegate.casherN)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
