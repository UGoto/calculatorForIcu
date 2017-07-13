//
//  abgViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/04.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class abgViewController: UIViewController,UITextFieldDelegate{
    @IBOutlet weak var phOfAbg: UITextField!
    @IBOutlet weak var paco2OfAbg: UITextField!
    @IBOutlet weak var pao2OfAbg: UITextField!
    @IBOutlet weak var hco3OfAbg: UITextField!
    @IBOutlet weak var naOfAbg: UITextField!
    @IBOutlet weak var kOfAbg: UITextField!
    @IBOutlet weak var clOfAbg: UITextField!
    
//    @IBOutlet weak var concomitant: UITextField!
    @IBOutlet weak var bloodGas: UITextField!
    @IBOutlet weak var ag: UITextField!


    
    
   //Returnキーが押されたら閉じる
    @IBAction func tapReturnPh(_ sender: UITextField) {
    }
    @IBAction func tapReturnPaco2(_ sender: UITextField) {
    }
    @IBAction func tapReturnPao2(_ sender: UITextField) {
    }
    @IBAction func tapReturnHco3(_ sender: UITextField) {
    }
  
    @IBAction func tapReturnNa(_ sender: UITextField) {
    }
    
    @IBAction func tapReturnK(_ sender: UITextField) {
    }
    @IBAction func tapReturnCl(_ sender: UITextField) {
    }
    
    //appDelegateのインスタンスの作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
    
    
    //呼吸アセスメントのページからデータを受け取る
        super.viewDidLoad()
        pao2OfAbg.text = String(appDelegate.valueOfPao2)
        paco2OfAbg.text = String(appDelegate.valueOfPaco2)
        }
    
        
    
    //結果の表示
        //AG計算
    @IBAction func resultButton(_ sender: UIButton) {
        if naOfAbg.text == "" || hco3OfAbg.text == "" || clOfAbg.text == "" {
        }else{
        let getNa:Double = Double(naOfAbg.text!)!
        let getHCO3:Double = Double(hco3OfAbg.text!)!
        let getCl:Double = Double(clOfAbg.text!)!
        ag.text = "AG:" + String(getNa - ( getHCO3 + getCl))
        ag.textAlignment = NSTextAlignment.center
        }
    
        //血液ガス計算
        if phOfAbg.text == "" || paco2OfAbg.text == "" || hco3OfAbg.text == ""{
            print("数値が入力されていない")
        }else{
            let getPh:Double = Double(phOfAbg.text!)!
            let getPaco2:Double = Double(paco2OfAbg
                .text!)!
            let getHco3:Double = Double(hco3OfAbg
                .text!)!
            
        //血ガス診断　４種類
            if (getPh < 7.35 && getPaco2 > 45) {
                bloodGas.text = "呼吸性アシドーシス"
            }else if(getPh < 7.35 && getHco3 > 24){
                bloodGas.text = "代謝性アシドーシス"
            }else if(getPh > 7.45 && getPaco2 < 35){
                bloodGas.text = "呼吸性アルカローシス"
            }else if(getPh > 7.45 && getHco3 < 24){
                bloodGas.text = "代謝性アルカローシス"
            }else{
                bloodGas.text = ""
            }
        }
        
        //AG開大の時、補正HCO3を計算。この時、ALBの値が必要
        
        
        
//        //代償されているかどうか
//        //        let getPh:Double = Double(ph.text!)!
//        let getPaco2:Double = Double(paco2OfAbg
//            .text!)!
//        let getHco3:Double = Double(hco3OfAbg
//            .text!)!
//        let concomiRespiOfAci = 1.2 * getHco3
//        let concomiRespiOfAl = 0.7 * getHco3
//        let concomiMetaboOfAci = 0.1 * getPaco2
//        let concomiMetaboOfAl = 0.2 * getPaco2
//        
//        if (getPaco2 <= concomiRespiOfAci) {
//            concomitant.text = "代謝性アシドーシスの呼吸性代償"
//        }else if(getPaco2 <= concomiRespiOfAl){
//            concomitant.text = "代謝性アルカローシスの呼吸性代償"
//        }else if(getHco3 <= concomiMetaboOfAci){
//            concomitant.text = "呼吸性アシドーシスの代謝性代償"
//        }else if(getHco3 <= concomiMetaboOfAl){
//            concomitant.text = "呼吸性アルカローシスの代謝性代償"
//        }
        
    }


//重複するデータの遷移
//    Sofaのページへ遷移（PaO2）
    @IBAction func buttonToSofa(_ sender: UIButton) {
        appDelegate.valueOfPao2 = Float(paco2OfAbg.text!)!
    }
    
    //APACHEのページへ遷移（pH,PaO2,Na,K,HCO3）
    @IBAction func buttonToApache(_ sender: UIButton) {
        if phOfAbg.text == ""{
        }else{
            appDelegate.valueOfPf = Float(phOfAbg.text!)!
        }
        
        if pao2OfAbg.text == ""{
        }else{
            appDelegate.valueOfPao2 = Float(pao2OfAbg.text!)!
        }
        
        if naOfAbg.text == ""{
        }else{
            appDelegate.valueOfNa = Float(naOfAbg.text!)!
        }
        
        if kOfAbg.text == ""{
        }else{
             appDelegate.valueOfK = Float(kOfAbg.text!)!
        }
        
        if hco3OfAbg.text == ""{
        }else{
            appDelegate.valueOfHco3 = Float(hco3OfAbg.text!)!
        }
       
        
    }
    
    //呼吸アセスメントのページへ遷移（Pao2,PaO2)
    @IBAction func buttonToRespi(_ sender: UIButton) {
        if pao2OfAbg.text == ""{
        }else{
            appDelegate.valueOfPao2 = Float(pao2OfAbg.text!)!
        }
        if paco2OfAbg.text == ""{
        }else{
            appDelegate.valueOfPaco2 = Float(paco2OfAbg.text!)!
        }
    }
    
    
    
    
//下の5つのボタンで画面の遷移
    //呼吸アセスメントへ画面を遷移
    @IBAction func tapButtonToRespi(_ sender: UIButton) {
        performSegue(withIdentifier: "showRespiFromAbg", sender: nil )
    }
    
    //栄養アセスメントへ画面を遷移
    @IBAction func tapButtonToNutri(_ sender: UIButton) {
        performSegue(withIdentifier: "showNFromAbg", sender: nil )
    }
    
    //Sofaへ画面を遷移
    @IBAction func tapButtonToSofa(_ sender: UIButton) {
         performSegue(withIdentifier: "showSofaFromAbg", sender: nil )
    }
    
    //DICへ画面を遷移
    @IBAction func tapButtonToDic(_ sender: UIButton) {
        performSegue(withIdentifier: "showDFromAbg", sender: nil )
    }

    //APACHE2へ画面を遷移
    @IBAction func tapButtonToApa(_ sender: UIButton) {
        performSegue(withIdentifier: "showApacheFromAbg", sender: nil )
           }
    

//テキストフィールド入力開始時に起動
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        performSegue(withIdentifier: "showTenkey", sender: nil )
        
        
            return false
    }
    
    
        
        



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
