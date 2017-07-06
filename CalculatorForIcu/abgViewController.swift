//
//  abgViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/04.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class abgViewController: UIViewController {
    @IBOutlet weak var phOfAbg: UITextField!
    @IBOutlet weak var paco2OfAbg: UITextField!
    @IBOutlet weak var pao2OfAbg: UITextField!
    @IBOutlet weak var hco3OfAbg: UITextField!
    @IBOutlet weak var naOfAbg: UITextField!
    @IBOutlet weak var kOfAbg: UITextField!
    @IBOutlet weak var clOfAbg: UITextField!
    
    @IBOutlet weak var concomitant: UITextField!
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
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func resultButton(_ sender: UIButton) {
        if naOfAbg.text == "" || kOfAbg.text == "" || clOfAbg.text == "" {
            print("数値が入力されていない")}
        let getNa:Double = Double(naOfAbg.text!)!
        let getK:Double = Double(kOfAbg.text!)!
        let getCl:Double = Double(clOfAbg.text!)!
        
        
        
        ag.text = String(getNa - ( getK + getCl))
        ag.textAlignment = NSTextAlignment.center
        
        
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
        
        
        
        //代償されているかどうか
        //        let getPh:Double = Double(ph.text!)!
        let getPaco2:Double = Double(paco2OfAbg
            .text!)!
        let getHco3:Double = Double(hco3OfAbg
            .text!)!
        let concomiRespiOfAci = 1.2 * getHco3
        let concomiRespiOfAl = 0.7 * getHco3
        let concomiMetaboOfAci = 0.1 * getPaco2
        let concomiMetaboOfAl = 0.2 * getPaco2
        
        if (getPaco2 <= concomiRespiOfAci) {
            concomitant.text = "代謝性アシドーシスの呼吸性代償"
        }else if(getPaco2 <= concomiRespiOfAl){
            concomitant.text = "代謝性アルカローシスの呼吸性代償"
        }else if(getHco3 <= concomiMetaboOfAci){
            concomitant.text = "呼吸性アシドーシスの代謝性代償"
        }else if(getHco3 <= concomiMetaboOfAl){
            concomitant.text = "呼吸性アルカローシスの代謝性代償"
        }
        
    }
//    //代償されているか
//   
//    @IBAction func concomitantButton(_ sender: UITextField) {
//        let getPh:Double = Double(phOfAbg.text!)!
//        let getPaco2:Double = Double(paco2OfAbg
//            .text!)!
//        let getHco3:Double = Double(hco3OfAbg
//            .text!)!
//        let concomiRespi = 1.2 * getHco3
//        let concomiMetab = 0.7 * getHco3
//        if (getPaco2 <= concomiRespi) {
//            concomitant.text = "代償性呼吸性アシドーシス"
//        }else if(getPaco2 <= concomiMetab){
//            concomitant.text = "代償性代謝性アルカローシス"
//        }
//
//    }
//    
//    //血液ガス計算
//    @IBAction func bloodGasButton(_ sender: UITextField) {
//        if phOfAbg.text == "" || paco2OfAbg.text == "" || hco3OfAbg.text == ""{
//            print("数値が入力されていない")
//        }else{
//            let getPh:Double = Double(phOfAbg.text!)!
//            let getPaco2:Double = Double(paco2OfAbg
//                .text!)!
//            let getHco3:Double = Double(hco3OfAbg
//                .text!)!
//            
//            //血ガス診断　４種類
//            if (getPh < 7.35 && getPaco2 > 45) {
//                bloodGas.text = "呼吸性アシドーシス"
//            }else if(getPh < 7.35 && getHco3 > 24){
//                bloodGas.text = "代謝性アシドーシス"
//            }else if(getPh > 7.45 && getPaco2 < 35){
//                bloodGas.text = "呼吸性アルカローシス"
//            }else if(getPh > 7.45 && getHco3 < 24){
//                bloodGas.text = "代謝性アルカローシス"
//            }else{
//                bloodGas.text = ""
//            }
//        }
//
//    }
//        
//    
//    //AnionGapの計算式
//    @IBAction func agButton(_ sender: UITextField) {
//        if naOfAbg.text == "" || kOfAbg.text == "" || clOfAbg.text == "" {
//            print("数値が入力されていない")}
//        let getNa:Double = Double(naOfAbg.text!)!
//        let getK:Double = Double(kOfAbg.text!)!
//        let getCl:Double = Double(clOfAbg.text!)!
//        
//        ag.text = String(getNa - ( getK + getCl))
//        ag.textAlignment = NSTextAlignment.center
//    }
   
    
    
//    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
   
        
//        paco2OfAbg.text = appDelegate.valueOfPaco2
//        pao2OfAbg.text = appDelegate.valueOfPao2

    

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