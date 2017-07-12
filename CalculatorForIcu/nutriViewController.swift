//
//  nutriViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/04.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class nutriViewController: UIViewController {
    
    @IBOutlet weak var ht: UITextField!
    @IBOutlet weak var pwt: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var protein: UITextField!
    @IBOutlet weak var bun: UITextField!
    @IBOutlet weak var hrBun: UITextField!
    @IBOutlet weak var wt: UITextField!

    
    //Return押したら閉じる
    @IBAction func tapButtonHt(_ sender: UITextField) {
    }
    @IBAction func tapButtonPwt(_ sender: UITextField) {
    }
    @IBAction func tapButtonAge(_ sender: UITextField) {
    }
    @IBAction func tapButtonProtein(_ sender: UITextField) {
    }
    @IBAction func tapButtonBun(_ sender: UITextField) {
    }
    @IBAction func tapButtonHr(_ sender: UITextField) {
    }
    @IBAction func tapButtonWt(_ sender: UITextField) {
    }
    
    
    
    
    //appDelegateのインスタンスの作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //栄養アセスメントの結果ページへデータを遷移
    @IBAction func resultButton(_ sender: UIButton) {
        if pwt.text == "" || ht.text == "" || age.text == ""{
            print("入力されていない項目があります")
        
        //BEE男
        }else{
        appDelegate.mof = 66 + (13.7 * Float(pwt.text!)!) + (5 * Float(ht.text!)!) - (6.8 * Float(age.text!)!)
        appDelegate.mof2 = appDelegate.mof * 1.2
        appDelegate.mof4 = appDelegate.mof * 1.4
        appDelegate.mof6 = appDelegate.mof * 1.6
        appDelegate.mof8 = appDelegate.mof * 1.8
        appDelegate.mof0 = appDelegate.mof * 2.0
        
        //BEE女
        appDelegate.fof = 65.5 + (9.6 * Float(pwt.text!)!) + (4.7 * Float(ht.text!)!) - (4.7 * Float(age.text!)!)
        appDelegate.fof2 = appDelegate.fof * 1.2
        appDelegate.fof4 = appDelegate.fof * 1.4
        appDelegate.fof6 = appDelegate.fof * 1.6
        appDelegate.fof8 = appDelegate.fof * 1.8
        appDelegate.fof0 = appDelegate.fof * 2.0
        
        //BMI
        if wt.text == "" || ht.text == "" {
            print("入力されていない項目があります")
        }else{
        appDelegate.bmi = Float(wt.text!)! / ((Float(ht.text!)!/100) * (Float(ht.text!)!/100))
        }
        //体重減少率
        if wt.text == "" || pwt.text == "" {
            print("入力されていない項目があります")
        }else{
        appDelegate.loseWt = (Float(wt.text!)!-Float(pwt.text!)!) / Float(wt.text!)! * 100
        }
        //エネルギー消費量（EE） vo2の値を呼吸アセスメントの結果から引っ張ってくる作業が必要
        if hrBun.text == "" {
            print("入力されていない項目があります")
        }else{
        appDelegate.ee = 3.94 + appDelegate.valueOfVo2 + 1.11 + appDelegate.valueOfVo2 - 2.17 * Float(hrBun.text!)!
        }
        //Nバランス
        if protein.text == "" || bun.text == "" {
            print("入力されていない項目があります")
        }else{
        appDelegate.nb = Float(protein.text!)!/6.25 - (Float(bun.text!)! * 1000 + 4 )
        }
        //投与窒素量
        if protein.text == "" {
                print("入力されていない項目があります")
        }else{
        appDelegate.giveN = Float(protein.text!)! * 1000 / 6.25
        }
        //窒素排泄量
        if hrBun.text == ""  {
                print("入力されていない項目があります")
        }else{
            appDelegate.excreteN = Float(hrBun.text!)! * 1000 * 1.25
        }
        //窒素出納
        appDelegate.casherN = appDelegate.giveN - appDelegate.excreteN
        }
    }
    
//重複するデータの遷移
    //APCHEの画面へ遷移
    @IBAction func buttonToApache(_ sender: UIButton) {
        if age.text == "" {
            print("入力されていない項目があります")
        }else{
        appDelegate.valueOfAge = Float(age.text!)!
        }
    }
    
    
    
//結果ボタンで栄養アセスメント画面の結果へページ遷移
    @IBAction func tapButtonRofN(_ sender: UIButton) {
          performSegue(withIdentifier: "showRofN", sender: nil )
    }
    
//下の５つのボタンで次の画面へ遷移
    @IBAction func tapButtonToRespi(_ sender: UIButton) {
    }
    @IBAction func tapButtonToAbg(_ sender: UIButton) {
    }
    @IBAction func tapButtonToSofa(_ sender: UIButton) {
    }
    @IBAction func tapButtonToDic(_ sender: UIButton) {
    }
    @IBAction func tapButtonToApa(_ sender: UIButton) {
        performSegue(withIdentifier: "showApacheFromN", sender: nil )
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
}
