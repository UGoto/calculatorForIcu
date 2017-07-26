//
//  respiViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/04.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit
import CoreData

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
    @IBOutlet weak var resultBtn: UIButton!
    
    
    
    
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
        //結果ボタンのデザイン　円形
        resultBtn.layer.cornerRadius = 20.0
        
        //各テキストの初期値に０が入らないようにする
        if appDelegate.valueOfPao2 == 0{
            pao2.text = ""
        }else if appDelegate.valueOfPaco2 == 0{
            paco2.text = ""
        }else{
        pao2.text = String(appDelegate.valueOfPao2)
        paco2.text = String(appDelegate.valueOfPaco2)
    }
    }
  
//呼吸アセスメントの結果ページへデータを遷移
    @IBAction func resultButton(_ sender: UIButton) {

        
    //計算した値を呼吸アセスメントのデータへ遷移
        //肺胞換気量の値
        if tv.text == "" || deadSpace.text == "" || rr.text == ""{
            print("入力されていない項目があります")
        }else{
          appDelegate.valueOfTvv = (Float(tv.text!)! - Float(deadSpace.text!)!) * Float(rr.text!)!
        }
        
        //A-aDo2の値
        if  paco2.text == "" || pao2.text == "" {
            print("入力されていない項目があります")
        }else if breathe.text == "" && vaporPressure.text == "" && pressure.text == "" && fio2.text == ""{
            appDelegate.valueOfAaDo2 = (150 - (Float(paco2.text!)! / 0.8)) - Float(pao2.text!)!
        }else if vaporPressure.text == "" && pressure.text == "" && fio2.text == ""{
            appDelegate.valueOfAaDo2 = (150 - (Float(paco2.text!)! / Float(breathe.text!)!)) - Float(pao2.text!)!
            appDelegate.valueOfBreathe = Float(breathe.text!)!
        }else if vaporPressure.text == "" || pressure.text == "" && breathe.text == "" {
            appDelegate.valueOfAaDo2 = (713 * Float(fio2.text!)! - (Float(paco2.text!)! / 0.8)) - Float(pao2.text!)!
        }else if breathe.text == "" {
            appDelegate.valueOfAaDo2 = ((Float(pressure.text!)! - Float(vaporPressure.text!)!) * Float(fio2.text!)! - (Float(paco2.text!)! / 0.8)) - Float(pao2.text!)!
        }else if fio2.text == ""{
            appDelegate.valueOfAaDo2 = ((Float(pressure.text!)! - Float(vaporPressure.text!)!) * 0.21 - (Float(paco2.text!)! / Float(breathe.text!)!)) - Float(pao2.text!)!
            appDelegate.valueOfBreathe = Float(breathe.text!)!
        }else{
            appDelegate.valueOfAaDo2 = ((Float(pressure.text!)! - Float(vaporPressure.text!)!) * Float(fio2.text!)! - (Float(paco2.text!)! / Float(breathe.text!)!)) - Float(pao2.text!)!
            appDelegate.valueOfBreathe = Float(breathe.text!)!
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
        
//    //Resultボタンが押された時、呼吸アセスメントのデータをCoreDateにCreateする
//        //AppDelegateのインスタンスを用意しておく
////        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
//        
//        //エンティティを操作するためのオブジェクトを作成する
//        let viewContext = appDelegate.persistentContainer.viewContext
//        
//        //Todoエンティティオブジェクトを作成する。”Todo”のところはmodeldのファイルの名前と同じ名前
//        let History = NSEntityDescription.entity(forEntityName: "History", in: viewContext)
//        
//        //Todoエンティティにレコード（行情報）を挿入するためのオブジェクトを作成する。 1行文のからの行を作っておく
//        let newRecord = NSManagedObject(entity: History!, insertInto: viewContext)
//        
//        //追加したいdata(textTitleに入力された文字）のセット
//        //Data()：現在日時がセットできる
//        newRecord.setValue(tv.text, forKey: "tv")
//        newRecord.setValue(Date(), forKey: "saveData")
//        
//        //ここまでは値を保存するまでの準備。下の作業をして初めてデータが保存される
//        
//        appDelegate.resultList.append(tv.text!)
//        appDelegate.historyTableView.reloadData()
//        
//        //レコード（行）の即時保存
//        do{
//            try viewContext.save()
//        }catch{
//            
//        }

    }
    

    
    
    
//重複するデータの遷移
    //血液ガス分析のページへ遷移(PaO2,PaCo2)
    @IBAction func buttonToAbg(_ sender: UIButton) {
        if pao2.text == "" || paco2.text == ""{
        }else{
        appDelegate.valueOfPao2 = Float(pao2.text!)!
        appDelegate.valueOfPaco2 = Float(paco2.text!)!
        }
        }
    
    //ApacheⅡのページへ遷移(PaO2,PaCO2,RR,Fio2)
    @IBAction func buttonToApache(_ sender: UIButton) {
        if pao2.text == "" {
        }else{
        appDelegate.valueOfPao2 = Float(pao2.text!)!
        }
        
        if rr.text == "" {
        }else{
        appDelegate.valueOfrr = Float(rr.text!)!
        }

        if paco2.text == ""{
        }else{
        appDelegate.valueOfPaco2 = Float(paco2.text!)!
        }
    
        if fio2.text == ""{
        }else{
        appDelegate.valueOfFio2 = Float(fio2.text!)!
        }
    }
    
    
    //SOFAのページへ遷移（PaO2,fio2）
    @IBAction func buttonToSofa(_ sender: UIButton) {
        if pao2.text == "" || fio2.text == "" {
        }else{
        appDelegate.valueOfPao2 = Float(pao2.text!)!
        appDelegate.valueOfFio2 = Float(fio2.text!)!
        }
        }
    
    //DICのページへ遷移（RR）
    @IBAction func buttonToDic(_ sender: UIButton) {
        if rr.text == "" {
        }else if paco2.text == "" {
        }else{
        appDelegate.valueOfrr = Float(rr.text!)!
        appDelegate.valueOfPaco2 = Float(paco2.text!)!
        }
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
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
}
