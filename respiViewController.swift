//
//  respiViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/04.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class respiViewController: UIViewController {

    @IBOutlet weak var tv: UITextField!
    @IBOutlet weak var deadSpace: UITextField!
    @IBOutlet weak var rr: UITextField!
    @IBOutlet weak var fio2: UITextField!
    @IBOutlet weak var breathe: UITextField!
    @IBOutlet weak var paco2: UITextField!
    @IBOutlet weak var pao2: UITextField!
    @IBOutlet weak var co: UITextField!
    @IBOutlet weak var hb: UITextField!
    @IBOutlet weak var sao2: UITextField!
    @IBOutlet weak var svo2: UITextField!
    @IBOutlet weak var cvo2: UITextField!
    @IBOutlet weak var pressure: UITextField!
    @IBOutlet weak var vaporPressure: UITextField!
    
    
    
    
    //Returnキーを閉じる
    @IBAction func tapReturnTv(_ sender: UITextField) {
    }
    @IBAction func tapReturnDs(_ sender: UITextField) {
    }
    @IBAction func tapReturnRr(_ sender: UITextField) {
    }
    @IBAction func tapReturnFio2(_ sender: UITextField) {
    }
    @IBAction func tapReturnBreathe(_ sender: UITextField) {
    }
    @IBAction func tapReturnPaco2(_ sender: UITextField) {
    }
    @IBAction func tapReturnPao2(_ sender: UITextField) {
    }
    @IBAction func tapReturnCo(_ sender: UITextField) {
    }
    @IBAction func tapReturnHb(_ sender: UITextField) {
    }
    @IBAction func tapReturnSao2(_ sender: UITextField) {
    }
    @IBAction func tapReturnSvo2(_ sender: UITextField) {
    }
    @IBAction func tapReturnCvo2(_ sender: UITextField) {
    }
    @IBAction func pressure(_ sender: UITextField) {
    }
    @IBAction func vaporPressure(_ sender: UITextField) {
    }
    
    
    
    //appDelegateのインスタンスの作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
//呼吸アセスメントの結果ページへデータを遷移
    @IBAction func resultButton(_ sender: UIButton) {

        
    //計算した値を呼吸アセスメントのデータへ遷移
        //肺胞換気量の値
        if tv.text == "" || deadSpace.text == "" || rr.text == ""{
            print("入力されていない項目があります")
        }else{
          appDelegate.valueOfTvv = (Int(tv.text!)! - Int(deadSpace.text!)!) * Int(rr.text!)!
        }
        
        //A-aDo2の値
        if fio2.text == "" || paco2.text == "" || pao2.text == "" || breathe.text == ""{
            print("入力されていない項目があります")
        }else{
        appDelegate.valueOfAaDo2 = (Float(fio2.text!)! * 715 - Float(paco2.text!)! / Float(breathe.text!)!) - Float(pao2.text!)!
        }
        
        //P/F値
        if pao2.text == "" || fio2.text == ""{
            print("入力されていない項目があります")
        }else{
        appDelegate.valueOfPf = Float(pao2.text!)! / Float(fio2.text!)!
        }
        
        
        if co.text == "" || sao2.text == "" || hb.text == "" || pao2.text == "" || cvo2.text == "" {
            print("入力されていない項目があります")
        }else{
        //DO2の値
        appDelegate.valueOfDo2 = appDelegate.valueOfQt * appDelegate.valueOfCao2
        
        //Qtの値
        appDelegate.valueOfQt = Float(co.text!)! * 10
        
        //Cao2の値
        appDelegate.valueOfCao2 = (1.38 * Float(hb.text!)! * Float(sao2.text!)!) + (Float(pao2.text!)! * 0.0031)
        
        //VO2の値
        appDelegate.valueOfVo2 = appDelegate.valueOfCao2 - Float(cvo2.text!)! * appDelegate.valueOfQt 
        
        //OERの値
        appDelegate.valueOfOer = appDelegate.valueOfVo2 / appDelegate.valueOfDo2 * 100
        
        }
    }
    

    
    
    
//重複するデータの遷移
    //血液ガス分析のページへ遷移
    @IBAction func buttonToAbg(_ sender: UIButton) {
        appDelegate.valueOfPao2 = Float(pao2.text!)!
        appDelegate.valueOfPaco2 = Float(paco2.text!)!
        
    }
    
    //ApacheⅡのページへ遷移
    @IBAction func buttonToApache(_ sender: UIButton) {
//        appDelegate.valueOfRr = rr.text!
    }

    
    
//下の欄のボタン（6つ）を押した際に次の画面へ遷移
    
    //栄養アセスメントの画面へ遷移
    @IBAction func tapButtonToNvc(_ sender: UIButton) {
        performSegue(withIdentifier: "showNutri", sender: nil )
    }
    
    //血液ガス分析の画面へ遷移
    @IBAction func tapButtonToAbg(_ sender: UIButton) {
        performSegue(withIdentifier: "showAbg", sender: nil )
    }
    
    //SOFAスコアの画面へ遷移
    @IBAction func tapButtonSofa(_ sender: UIButton) {
    performSegue(withIdentifier: "showSofa", sender: nil )
    }

    //DICの画面へ遷移
    @IBAction func tapButtonDic(_ sender: UIButton) {
       performSegue(withIdentifier: "showDic", sender: nil )
    }
    
    //Apachの画面へ遷移
    @IBAction func tapbuttonApach(_ sender: UIButton) {
        performSegue(withIdentifier: "showApach", sender: nil )
    }
    
    //呼吸アセスメントの結果画面への遷移
    @IBAction func tapbuttonRofR(_ sender: UIButton) {
        performSegue(withIdentifier: "showRofR", sender: nil )
    }
    
    //セグエを通って次の画面へ移動する
    //栄養アセスメントの画面へ
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        //次の画面（nutriViewController)のインスタンス化(as:ダウンキャスト型変換)
//        //nvc:detailviewcontroller
//        var nvc = segue.destination as! nutriViewController
//    }
    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
