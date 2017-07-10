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
    @IBOutlet weak var nb: UIView!
    @IBOutlet weak var giveNi: UITextField!
    @IBOutlet weak var outNi: UITextField!
    @IBOutlet weak var inOutNi: UITextField!
    
    
    //appDelegateのインスタンスの作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    //栄養ページからデータを受け取る
    override func viewDidLoad() {
        super.viewDidLoad()
        //BEE男性の値を出力
        mof.text = String(appDelegate.mof)
        mof2.text = String(appDelegate.mof2)
        mof4.text = String(appDelegate.mof4)
        mof6.text = String(appDelegate.mof6)
        mof8.text = String(appDelegate.mof8)
        mof0.text = String(appDelegate.mof0)
        
        //BEE女性の値を出力
        fof.text = String(appDelegate.fof)
        fof2.text = String(appDelegate.fof2)
        fof4.text = String(appDelegate.fof4)
        fof6.text = String(appDelegate.fof6)
        fof8.text = String(appDelegate.fof8)
        fof0.text = String(appDelegate.fof0)
        
        //
        bmi.text = String(appDelegate.bmi)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
