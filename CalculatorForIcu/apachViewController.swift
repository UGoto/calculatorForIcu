//
//  apachViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/05.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class apachViewController: UIViewController {

    //セグメント
    @IBOutlet weak var temp: UISegmentedControl!
    @IBOutlet weak var map: UISegmentedControl!
    @IBOutlet weak var hr: UISegmentedControl!
    @IBOutlet weak var rr: UISegmentedControl!
    @IBOutlet weak var aaDo2: UISegmentedControl!
    @IBOutlet weak var ph: UISegmentedControl!
    @IBOutlet weak var po2: UISegmentedControl!
    @IBOutlet weak var na: UISegmentedControl!
    @IBOutlet weak var k: UISegmentedControl!
    @IBOutlet weak var cre: UISegmentedControl!
    @IBOutlet weak var ht: UISegmentedControl!
    @IBOutlet weak var wbc: UISegmentedControl!
    @IBOutlet weak var hco3: UISegmentedControl!
    @IBOutlet weak var age: UISegmentedControl!
    @IBOutlet weak var ope: UISegmentedControl!
    @IBOutlet weak var afterope: UISegmentedControl!
    
 
    //GCSのスコア
    @IBOutlet weak var gcs: UITextField!
    
    //GCS　returnキーが押されたらテンキーが閉じる
    @IBAction func gcsScore(_ sender: UITextField) {
    }
    
    
    //結果ボタンのtext
    @IBOutlet weak var comment: UITextField!
    @IBOutlet weak var total: UILabel!
    
    
    //合計点数の変数を作成
    var amount:Int = 0
    
    //セグメントが選択されない時の初期値の設定
    var temNumber:Int = 0
    var mapNumber:Int = 0
    var hrNumber:Int = 0
    var rrNumber:Int = 0
    var aaDo2Number:Int = 0
    var po2Number:Int = 0
    var phNumber:Int = 0
    var naNumber:Int = 0
    var kNumber:Int = 0
    var creNumber:Int = 0
    var htNumber:Int = 0
    var wbcNumber:Int = 0
    var hco3Number:Int = 0
    var ageNumber:Int = 0
    var opeNumber:Int = 0
    var afteropeNumber:Int = 0

    @IBOutlet weak var resultBtn: UIButton!
    //appDelegateのインスタンスの作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultBtn.layer.cornerRadius = 20.0

    //AppDelegateから値を引き継いで、その値が入るセグメントを選択する
        //A-aDO2
        if  appDelegate.valueOfPao2 == 0 || appDelegate.valueOfPaco2 == 0 {
            aaDo2.selectedSegmentIndex = 0
        }else if (150 - (appDelegate.valueOfPaco2 / 0.8) - appDelegate.valueOfPao2) >= 500 && appDelegate.valueOfFio2 >= 0.5{
            aaDo2.selectedSegmentIndex = 0
            aaDo2Number = 4
        }else if (150 - (appDelegate.valueOfPaco2 / 0.8) - appDelegate.valueOfPao2) >= 350 && (150 - (appDelegate.valueOfPaco2 / 0.8) - appDelegate.valueOfPao2) < 500 && appDelegate.valueOfFio2 >= 0.5{
            aaDo2.selectedSegmentIndex = 1
            aaDo2Number = 3
        }else if (150 - (appDelegate.valueOfPaco2 / 0.8) - appDelegate.valueOfPao2) >= 200 && (150 - (appDelegate.valueOfPaco2 / 0.8) - appDelegate.valueOfPao2) < 350 && appDelegate.valueOfFio2 >= 0.5{
            po2.selectedSegmentIndex = 2
            po2Number = 2
        }else if (150 - (appDelegate.valueOfPaco2 / 0.8) - appDelegate.valueOfPao2) < 200 && appDelegate.valueOfFio2 >= 0.5{
            aaDo2.selectedSegmentIndex = 3
            aaDo2Number = 0
        }
        

        
        //PaO2
        if  appDelegate.valueOfPao2 == 0 {
            po2.selectedSegmentIndex = 0
        }else if appDelegate.valueOfPao2 > 70.0 && appDelegate.valueOfFio2 < 0.5{
            po2.selectedSegmentIndex = 0
            po2Number = 0
        }else if appDelegate.valueOfPao2 <= 70.0 && appDelegate.valueOfPao2 > 60.0 && appDelegate.valueOfFio2 < 0.5{
            po2.selectedSegmentIndex = 1
            po2Number = 1
        }else if appDelegate.valueOfPao2 <= 60.0 && appDelegate.valueOfPao2 >= 55.0 && appDelegate.valueOfFio2 < 0.5{
            po2.selectedSegmentIndex = 2
            po2Number = 3
        }else if appDelegate.valueOfPao2 < 55.0 && appDelegate.valueOfFio2 < 0.5{
            po2.selectedSegmentIndex = 3
            po2Number = 4
        }
        
        //RR
        if appDelegate.valueOfrr == 0{
            rr.selectedSegmentIndex = 0
        }else if appDelegate.valueOfrr >= 50 {
            rr.selectedSegmentIndex = 0
            rrNumber = 4
        }else if appDelegate.valueOfrr <= 49 && appDelegate.valueOfrr >= 35 {
            rr.selectedSegmentIndex = 1
            rrNumber = 3
        }else if appDelegate.valueOfrr <= 34 && appDelegate.valueOfrr >= 25 {
            rr.selectedSegmentIndex = 2
            rrNumber = 1
        }else if appDelegate.valueOfrr <= 24  && appDelegate.valueOfrr >= 12 {
            rr.selectedSegmentIndex = 3
            rrNumber = 0
        }else if appDelegate.valueOfrr <= 11 && appDelegate.valueOfrr >= 10 {
            rr.selectedSegmentIndex = 4
            rrNumber = 1
        }else if appDelegate.valueOfrr <= 9 && appDelegate.valueOfrr >= 6 {
            rr.selectedSegmentIndex = 5
            rrNumber = 2
        }else if appDelegate.valueOfrr <= 5 {
            rr.selectedSegmentIndex = 6
            rrNumber = 4
        }
        
        //Age)
        if appDelegate.valueOfAge <= 44{
            age.selectedSegmentIndex = 0
            ageNumber = 0
        }else if appDelegate.valueOfAge >= 45 && appDelegate.valueOfAge <= 54 {
            age.selectedSegmentIndex = 1
            ageNumber = 1
        }else if appDelegate.valueOfAge >= 55 && appDelegate.valueOfAge <= 64{
            age.selectedSegmentIndex = 2
            ageNumber = 3
        }else if appDelegate.valueOfAge >= 65 && appDelegate.valueOfAge <= 74{
            age.selectedSegmentIndex = 3
            ageNumber = 5
        }else if appDelegate.valueOfAge >= 75 {
            age.selectedSegmentIndex = 4
            ageNumber = 6
        }
    
        //Ph
        if  appDelegate.valueOfPh == 0.0{
            ph.selectedSegmentIndex = 0
            phNumber = 4
            print(appDelegate.valueOfPf)
            print(ph.selectedSegmentIndex)
        }else if appDelegate.valueOfPh > 7.7 {
            ph.selectedSegmentIndex = 0
            phNumber = 4
        }else if appDelegate.valueOfPh >= 7.6 && appDelegate.valueOfPh < 7.7{
            ph.selectedSegmentIndex = 1
            phNumber = 3
        }else if appDelegate.valueOfPh >= 7.5 && appDelegate.valueOfPh < 7.6{
            ph.selectedSegmentIndex = 2
            phNumber = 2
        }else if appDelegate.valueOfPh >= 7.33 && appDelegate.valueOfPh < 7.5{
            ph.selectedSegmentIndex = 3
            phNumber = 0
        }else if appDelegate.valueOfPh >= 7.25 && appDelegate.valueOfPh < 7.33{
            ph.selectedSegmentIndex = 4
            phNumber = 2
        }else if appDelegate.valueOfPh >= 7.15 && appDelegate.valueOfPh < 7.25{
            ph.selectedSegmentIndex = 5
            phNumber = 3
        }else if appDelegate.valueOfPh < 7.15{
            ph.selectedSegmentIndex = 6
            phNumber = 4
            
        }
        
        //HCO3
        if appDelegate.valueOfHco3 == 0 || appDelegate.valueOfHco3 >= 52 {
            hco3.selectedSegmentIndex = 0
            hco3Number = 4
        }else if appDelegate.valueOfHco3 < 52  && appDelegate.valueOfHco3 >= 41 {
            hco3.selectedSegmentIndex = 1
            hco3Number = 3
        }else if appDelegate.valueOfHco3 < 41 && appDelegate.valueOfHco3 >= 32{
            hco3.selectedSegmentIndex = 2
            hco3Number = 1
        }else if appDelegate.valueOfHco3 < 32 && appDelegate.valueOfHco3 >= 22 {
            hco3.selectedSegmentIndex = 3
            hco3Number = 0
        }else if appDelegate.valueOfHco3 < 22 && appDelegate.valueOfHco3 >= 18 {
            hco3.selectedSegmentIndex = 4
            hco3Number = 2
        }else if appDelegate.valueOfHco3 < 18 && appDelegate.valueOfHco3 >= 15 {
            hco3.selectedSegmentIndex = 5
            hco3Number = 3
        }else if appDelegate.valueOfHco3 < 15 {
            hco3.selectedSegmentIndex = 6
            hco3Number = 4
        }
        
        //Na
        if appDelegate.valueOfNa == 0 || appDelegate.valueOfNa >= 180 {
            na.selectedSegmentIndex = 0
            naNumber = 4
        }else if appDelegate.valueOfNa < 180  && appDelegate.valueOfNa >= 160 {
            na.selectedSegmentIndex = 1
            naNumber = 3
        }else if appDelegate.valueOfNa < 160 && appDelegate.valueOfNa >= 155{
            na.selectedSegmentIndex = 2
            naNumber = 2
        }else if appDelegate.valueOfNa < 155 && appDelegate.valueOfNa >= 150 {
            na.selectedSegmentIndex = 3
            naNumber = 1
        }else if appDelegate.valueOfNa < 150 && appDelegate.valueOfNa >= 130 {
            na.selectedSegmentIndex = 4
            naNumber = 0
        }else if appDelegate.valueOfNa < 130 && appDelegate.valueOfNa >= 120 {
            na.selectedSegmentIndex = 5
            naNumber = 2
        }else if appDelegate.valueOfNa <= 119 {
            na.selectedSegmentIndex = 6
            naNumber = 4
        }
        
        //K
        if appDelegate.valueOfK == 0 || appDelegate.valueOfK >= 7 {
            k.selectedSegmentIndex = 0
            naNumber = 4
        }else if appDelegate.valueOfK < 7  && appDelegate.valueOfK >= 6.0 {
            k.selectedSegmentIndex = 1
            kNumber = 3
        }else if appDelegate.valueOfK < 6.0 && appDelegate.valueOfK >= 5.5{
            k.selectedSegmentIndex = 2
            kNumber = 1
        }else if appDelegate.valueOfK < 5.5 && appDelegate.valueOfK >= 3.5 {
            k.selectedSegmentIndex = 3
            kNumber = 0
        }else if appDelegate.valueOfK < 3.5 && appDelegate.valueOfK >= 3.0 {
            k.selectedSegmentIndex = 4
            kNumber = 1
        }else if appDelegate.valueOfK < 3.0 && appDelegate.valueOfK >= 2.5 {
            k.selectedSegmentIndex = 5
            kNumber = 2
        }else if appDelegate.valueOfK < 2.5  {
            k.selectedSegmentIndex = 6
            kNumber = 4
        }
        
        //HR
        if appDelegate.valueOfHr == 0 || appDelegate.valueOfHr >= 180 {
            hr.selectedSegmentIndex = 0
            hrNumber = 4
        }else if appDelegate.valueOfHr < 180  && appDelegate.valueOfHr >= 140 {
            hr.selectedSegmentIndex = 1
            hrNumber = 3
        }else if appDelegate.valueOfHr < 140 && appDelegate.valueOfHr >= 110{
            hr.selectedSegmentIndex = 2
            hrNumber = 2
        }else if appDelegate.valueOfHr < 110 && appDelegate.valueOfHr >= 70 {
            hr.selectedSegmentIndex = 3
            hrNumber = 0
        }else if appDelegate.valueOfHr < 70 && appDelegate.valueOfHr >= 55 {
            hr.selectedSegmentIndex = 4
            hrNumber = 2
        }else if appDelegate.valueOfHr < 55 && appDelegate.valueOfHr >= 40 {
            hr.selectedSegmentIndex = 5
            hrNumber = 3
        }else if appDelegate.valueOfHr < 40{
            hr.selectedSegmentIndex = 6
            hrNumber = 4
        }
        
        

    
    
    
//        //セグメントの設定　Systemは普段edit画面で使っているものと同じ
//        map.makeMultiline(withFontName: "System", fontSize: 11, textColor: UIColor.blue,selectedIndex: 0)
    }
    
    
    //セグメントをタップした時TextColorを白、タップされていない時青色にするif文
//    @IBAction func map(_ sender: UISegmentedControl) {
////        //selectedIndex = 白　それ以外を青　でif文にするø
////        if pfSeg.selectedSegmentIndex == 0{
////            pfNumber = 0
////        if sender.isMomentary == true{
////            map.makeMultiline(withFontName: "System", fontSize: 11, textColor: UIColor.blue,)
////        }else{
////            map.makeMultiline(withFontName: "System", fontSize: 11, textColor: UIColor.white)
////
////        }
//        
//        map.makeMultiline(withFontName: "System", fontSize: 11, textColor: UIColor.blue,selectedIndex: sender.selectedSegmentIndex)
//    }
//    

    //体温のセグメントの設定
    @IBAction func tempSeg(_ sender: UISegmentedControl) {
        if temp.selectedSegmentIndex == 0{
            temNumber = 4
        }else if temp.selectedSegmentIndex == 1{
            temNumber = 3
        }else if temp.selectedSegmentIndex == 2{
            temNumber = 1
        }else if temp.selectedSegmentIndex == 3{
            temNumber = 0
        }else if temp.selectedSegmentIndex == 4{
            temNumber = 1
        }else if temp.selectedSegmentIndex == 5{
            temNumber = 2
        }else if temp.selectedSegmentIndex == 6{
            temNumber = 3
        }else if temp.selectedSegmentIndex == 7{
            temNumber = 4
        }
    }
    
    //平均血圧のセグメントの設定
    @IBAction func mapSeg(_ sender: UISegmentedControl)
        {
        if map.selectedSegmentIndex == 0{
            mapNumber = 4
        }else if map.selectedSegmentIndex == 1{
            mapNumber = 3
        }else if map.selectedSegmentIndex == 2{
            mapNumber = 2
        }else if map.selectedSegmentIndex == 3{
            mapNumber = 0
        }else if map.selectedSegmentIndex == 4{
            mapNumber = 2
        }else if map.selectedSegmentIndex == 5{
            mapNumber = 4
        }
    }
    
      //心拍数のセグメントの設定
    @IBAction func hrSeg(_ sender: UISegmentedControl) {
        if hr.selectedSegmentIndex == 0{
            hrNumber = 4
        }else if hr.selectedSegmentIndex == 1{
            hrNumber = 3
        }else if hr.selectedSegmentIndex == 2{
            hrNumber = 2
        }else if hr.selectedSegmentIndex == 3{
            hrNumber = 0
        }else if hr.selectedSegmentIndex == 4{
            hrNumber = 2
        }else if hr.selectedSegmentIndex == 5{
            hrNumber = 3
        }else if hr.selectedSegmentIndex == 6{
            hrNumber = 4
        }
    }
    
    //呼吸数のセグメントの設定
    @IBAction func rrSeg(_ sender: UISegmentedControl) {
        if rr.selectedSegmentIndex == 0{
            rrNumber = 4
        }else if rr.selectedSegmentIndex == 1{
            rrNumber = 3
        }else if rr.selectedSegmentIndex == 2{
            rrNumber = 1
        }else if rr.selectedSegmentIndex == 3{
            rrNumber = 0
        }else if rr.selectedSegmentIndex == 4{
            rrNumber = 1
        }else if rr.selectedSegmentIndex == 5{
            rrNumber = 2
        }else if rr.selectedSegmentIndex == 6{
            rrNumber = 4
        }
    }
    
    //A-aDo2のセグメントの設定
    @IBAction func aaDo2Seg(_ sender: UISegmentedControl) {
        if aaDo2.selectedSegmentIndex == 0{
            aaDo2Number = 4
        }else if aaDo2.selectedSegmentIndex == 1{
            aaDo2Number = 3
        }else if aaDo2.selectedSegmentIndex == 2{
            aaDo2Number = 2
        }else if rr.selectedSegmentIndex == 3{
            aaDo2Number = 0
        }
    }
    
    //PaO2のセグメント設定
    @IBAction func pao2Seg(_ sender: UISegmentedControl) {
        if po2.selectedSegmentIndex == 0{
            po2Number = 0
        }else if po2.selectedSegmentIndex == 1{
            po2Number = 1
        }else if po2.selectedSegmentIndex == 2{
            po2Number = 3
        }else if po2.selectedSegmentIndex == 3{
            po2Number = 4
        }
    }
    
    //Phのセグメント設定
    @IBAction func phSeg(_ sender: UISegmentedControl) {
        if ph.selectedSegmentIndex == 0{
            phNumber = 4
        }else if ph.selectedSegmentIndex == 1{
            phNumber = 3
        }else if ph.selectedSegmentIndex == 2{
            phNumber = 2
        }else if ph.selectedSegmentIndex == 3{
            phNumber = 0
        }else if ph.selectedSegmentIndex == 4{
            phNumber = 2
        }else if ph.selectedSegmentIndex == 5{
            phNumber = 3
        }else if ph.selectedSegmentIndex == 6{
            phNumber = 4
        }
    }
    
    //血清Naのセグメント設定
    @IBAction func naSeg(_ sender: UISegmentedControl) {
        if na.selectedSegmentIndex == 0{
            naNumber = 4
        }else if na.selectedSegmentIndex == 1{
            naNumber = 3
        }else if na.selectedSegmentIndex == 2{
            naNumber = 2
        }else if na.selectedSegmentIndex == 3{
            naNumber = 1
        }else if na.selectedSegmentIndex == 4{
            naNumber = 0
        }else if na.selectedSegmentIndex == 5{
            naNumber = 2
        }else if na.selectedSegmentIndex == 6{
            naNumber = 4
        }
    }
    
    //血清Kのセグメント設定
    @IBAction func kSeg(_ sender: UISegmentedControl) {
        if k.selectedSegmentIndex == 0{
            kNumber = 4
        }else if k.selectedSegmentIndex == 1{
            kNumber = 3
        }else if k.selectedSegmentIndex == 2{
            kNumber = 1
        }else if k.selectedSegmentIndex == 3{
            kNumber = 0
        }else if k.selectedSegmentIndex == 4{
            kNumber = 1
        }else if k.selectedSegmentIndex == 5{
            kNumber = 2
        }else if k.selectedSegmentIndex == 6{
            kNumber = 4
        }
    }
    
    //血清クレアチニンのセグメント設定
    @IBAction func creSeg(_ sender: UISegmentedControl) {
        if cre.selectedSegmentIndex == 0{
            creNumber = 4
        }else if cre.selectedSegmentIndex == 1{
            creNumber = 3
        }else if cre.selectedSegmentIndex == 2{
            creNumber = 2
        }else if cre.selectedSegmentIndex == 3{
            creNumber = 0
        }else if cre.selectedSegmentIndex == 4{
            creNumber = 2
        }
    }

    //ヘマトクリットのセグメント設定
    @IBAction func htSeg(_ sender: UISegmentedControl) {
        if ht.selectedSegmentIndex == 0{
            htNumber = 4
        }else if ht.selectedSegmentIndex == 1{
            htNumber = 2
        }else if ht.selectedSegmentIndex == 2{
            htNumber = 1
        }else if ht.selectedSegmentIndex == 3{
            htNumber = 0
        }else if ht.selectedSegmentIndex == 4{
            htNumber = 2
        }else if ht.selectedSegmentIndex == 5{
            htNumber = 4
        }
    }
    
    //白血球のセグメントの設定
    @IBAction func wbcSeg(_ sender: UISegmentedControl) {
        if wbc.selectedSegmentIndex == 0{
            wbcNumber = 4
        }else if wbc.selectedSegmentIndex == 1{
            wbcNumber = 2
        }else if wbc.selectedSegmentIndex == 2{
            wbcNumber = 1
        }else if wbc.selectedSegmentIndex == 3{
            wbcNumber = 0
        }else if wbc.selectedSegmentIndex == 4{
            wbcNumber = 2
        }else if wbc.selectedSegmentIndex == 5{
            wbcNumber = 4
        }
    }
    
    //血清HCO3のセグメントの設定
    @IBAction func hco3(_ sender: UISegmentedControl) {
        if hco3.selectedSegmentIndex == 0{
            hco3Number = 4
        }else if hco3.selectedSegmentIndex == 1{
            hco3Number = 3
        }else if hco3.selectedSegmentIndex == 2{
            hco3Number = 1
        }else if hco3.selectedSegmentIndex == 3{
            hco3Number = 0
        }else if hco3.selectedSegmentIndex == 4{
            hco3Number = 2
        }else if hco3.selectedSegmentIndex == 5{
            hco3Number = 3
        }else if hco3.selectedSegmentIndex == 6{
            hco3Number = 4
        }
    }
    
    //年齢
    @IBAction func ageSeg(_ sender: UISegmentedControl) {
        if age.selectedSegmentIndex == 0{
            ageNumber = 0
        }else if age.selectedSegmentIndex == 1{
            ageNumber = 1
        }else if age.selectedSegmentIndex == 2{
            ageNumber = 3
        }else if age.selectedSegmentIndex == 3{
            ageNumber = 5
        }else if age.selectedSegmentIndex == 4{
            ageNumber = 6
        }
    }
    
    //非手術・緊急手術の有無
    @IBAction func opeSeg(_ sender: UISegmentedControl) {
        if ope.selectedSegmentIndex == 0{
            opeNumber = 0
        }else if ope.selectedSegmentIndex == 1{
            opeNumber = 5
        }
    }
    
    //定期手術の有無
    @IBAction func afteropeSeg(_ sender: UISegmentedControl) {
        if afterope.selectedSegmentIndex == 0{
            afteropeNumber = 0
        }else if afterope.selectedSegmentIndex == 1{
            afteropeNumber = 2
        }
    }

    
//体温の詳細
    @IBAction func tempButton(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "体温", message: "４点 ≧ 41\n3点: 39−40\n1点: 38.5-38.9\n0点: 36-38.4\n1点: 34-35.9\n2点: 32-33.9\n3点: 30-31.9\n4点 ≦ 29.9", preferredStyle:  .alert)
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }
    
//平均血圧の詳細
    @IBAction func mapButton(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "平均血圧", message: "４点 ≧ 160\n3点: 130−159\n2点: 110-129\n0点: 70-109\n2点: 50-69\n4点 ≦ 49", preferredStyle:  .alert)
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }
    
//心拍数の詳細
    @IBAction func hrButton(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "心拍数", message: "４点 ≧ 180\n3点: 140−179\n2点: 110-139\n0点: 70-109\n2点: 50-69\n3点: 40-54\n4点 ≦ 39", preferredStyle:  .alert)
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }

//phの詳細
    @IBAction func phButton(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "pH", message: "４点 ≧ 7.7\n3点: 7.6−7.69\n1点: 7.5-7.59\n0点: 7.33-7.49\n2点: 7.25-7.32\n3点: 7.15-7.24\n4点 < 7.15", preferredStyle:  .alert)
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }

//Naの詳細
    @IBAction func naButton(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "Na", message: "４点 ≧ 180\n3点: 160−179\n1点: 150-159\n0点: 130-149\n2点: 120-129\n4点 ≦ 119", preferredStyle:  .alert)
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }

//Kの詳細
    @IBAction func kButton(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "K", message: "４点 ≧ 7\n3点: 6.0−6.9\n1点: 5.5-5.9\n0点: 3.5-5.4\n1点: 3-3.4\n2点: 2.5-2.9\n4点 < 2.5", preferredStyle:  .alert)
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }

//htの詳細
    @IBAction func htButton(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "ヘマトクリット", message: "４点 ≧ 7\n3点: 6.0−6.9\n1点: 5.5-5.9\n0点: 3.5-5.4\n1点: 3-3.4\n2点: 2.5-2.9\n4点 < 2.5", preferredStyle:  .alert)
            
            //アラートにOKボタンを追加
            alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
            
            //アラートを表示する
            present(alertController,animated: true,completion: nil)
    }

//WBCの詳細
    @IBAction func wbcButton(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "白血球", message: "４点 ≧ 40\n3点: 20−39.9\n1点: 15-19.9\n0点: 3-14.9\n2点: 1-2.9\n4点 < 1", preferredStyle:  .alert)
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }
    
//HCO3の詳細
    @IBAction func hco3Button(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "HCO3", message: "４点 ≧ 52\n3点: 41−51.9\n1点: 32-40.9\n0点: 22-31.9\n2点: 18-21.9\n3点: 15-17.9\n4点 < 15", preferredStyle:  .alert)
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }


    
//慢性病態ポイント(
    @IBAction func chronicButton(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "慢性病態ポイント", message: "（1）肝：生検にて確認された肝硬変、門脈圧亢進症および門脈圧亢進による上部消化管出血の既往、または肝不全・肝性脳症・肝性昏睡のあること。\n（2）心血管系：NYHA クラス IV    \n（3）呼吸器：慢性拘束性・閉塞性または血管疾患で重度の運動障害（階段を上がれない、家事ができないなど)があること。慢性低酸素血症、高炭酸ガス血症、二次性多血症、慢性肺高血圧（>40mmHg）。または人工呼吸器離脱不能例\n（4）免疫不全：感染への抵抗力を抑制する治療（免疫抑制剤、癌化学療法、放射線照射、長期または現在の大量のステロイド投与など）を受けている者、または感染への抵抗力を著明に減じる疾患（白血病、リンパ腫またはAIDSなど）に罹患している者。", preferredStyle:  .alert)
      
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))

        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }
    
    
    
    
    //結果ボタンが押されたとき、データの結果が表示される
    @IBAction func totalScore(_ sender: UIButton) {
        if gcs.text == "" {
            comment.text = "GCSスコアが未入力です"
        }else if Int(gcs.text!)! > 15 || Int(gcs.text!)! < 3{
            comment.text = "GCスコアを正しく入力してください"
        }else if Int(gcs.text!)! <= 15 && Int(gcs.text!)! >= 3 {
            amount = temNumber + mapNumber + hrNumber + rrNumber + aaDo2Number + phNumber + po2Number + naNumber + kNumber + creNumber + htNumber + wbcNumber + ageNumber + opeNumber + afteropeNumber + (15 - Int(gcs.text!)!)
            
            total.text = String(amount)
            comment.text = ""
        }
    
    }
    
//重複するデータの遷移
    //Sofaの画面へ遷移
    @IBAction func buttonToSofa(_ sender: UIButton) {
        if gcs.text == ""{
        }else{
            appDelegate.valueOfGcs = Float(gcs.text!)!
        }
    }

    
    
//下の5つのボタンで画面の遷移
    @IBAction func tapButtonToSofa(_ sender: UIButton) {
        performSegue(withIdentifier: "showSofaFromA", sender: nil )
    }
    @IBAction func tapButtonToRespi(_ sender: UIButton) {
        performSegue(withIdentifier: "showRespiFromA", sender: nil )
    }
    @IBAction func tapButtonToN(_ sender: UIButton) {
        performSegue(withIdentifier: "showNutriFromA", sender: nil )
    }
    @IBAction func tapButtonToD(_ sender: UIButton) {
        performSegue(withIdentifier: "showDicFromA", sender: nil )
    }
    @IBAction func tapButtonToAbg(_ sender: UIButton) {
        performSegue(withIdentifier: "showAbgFromA", sender: nil )
    }
   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}

////セグメントのための拡張機能　セグメントを２段にする
//extension UISegmentedControl {
//    func makeMultiline(withFontName fontName: String, fontSize: CGFloat, textColor: UIColor,selectedIndex:Int){
//        for index in 0...self.numberOfSegments - 1 {
//            
//            var setIndex = self.numberOfSegments - 1 - index
//            
//            let label = UILabel(frame: CGRect(x:0,y:0,width:self.frame.width/CGFloat(self.numberOfSegments),height:self.frame.height))
//            label.font = UIFont(name: fontName, size: fontSize)
//            if selectedIndex == self.selectedSegmentIndex{
//                label.textColor = UIColor.white
//            
//            }else{
//                label.textColor = self.tintColor
//
//            }
//            label.text = self.titleForSegment(at: setIndex)
//            label.numberOfLines = 0
//            label.textAlignment = .center
//            label.adjustsFontSizeToFitWidth = true
//            
//            self.setTitle("", forSegmentAt: setIndex)
//            self.subviews[index].addSubview(label)
//        }
//    }
//}
