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
        }else{
        //BEE男
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
        
        }
    }
    
    
    
    
    
    @IBAction func tapButtonRofN(_ sender: UIButton) {
          performSegue(withIdentifier: "showRofN", sender: nil )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}