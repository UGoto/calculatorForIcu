//
//  AssessForRespViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/06/18.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class AssessDeliViewController: UIViewController {
//        var sIndex = -1
  
//CAM-ICU
    
    //segment
    @IBOutlet weak var cam1: UISegmentedControl!
    @IBOutlet weak var cam2: UISegmentedControl!
    @IBOutlet weak var cam3: UISegmentedControl!
    @IBOutlet weak var cam4a: UISegmentedControl!
    @IBOutlet weak var cam4b: UISegmentedControl!
    
    //結果の出力　label
    @IBOutlet weak var resultLabel: UILabel!
    
    //合計点数の変数を作成
    var amountCam:Int = 0
    //セグメントが選択されない時の初期値の設定
    var cam1Score:Int = 1
    var cam2Score:Int = 1
    var cam3Score:Int = 1
    var cam4aScore:Int = 1
    var cam4bScore:Int = 1


//ICDSD
    //segment
    @IBOutlet weak var icd1: UISegmentedControl!
    @IBOutlet weak var icd2: UISegmentedControl!
    @IBOutlet weak var icd3: UISegmentedControl!
    @IBOutlet weak var icd4: UISegmentedControl!
    @IBOutlet weak var icd5: UISegmentedControl!
    @IBOutlet weak var icd6: UISegmentedControl!
    @IBOutlet weak var icd7: UISegmentedControl!
    @IBOutlet weak var icd8: UISegmentedControl!
    
    //結果の出力　Label
    @IBOutlet weak var resultLabel2: UILabel!
    
    //合計点数の変数を作成
    var amountIcd:Int = 0
    
    //セグメントが選択されない時の初期値の設定
    var icd1Score:Int = 1
    var icd2Score:Int = 1
    var icd3Score:Int = 1
    var icd4Score:Int = 1
    var icd5Score:Int = 1
    var icd6Score:Int = 1
    var icd7Score:Int = 1
    var icd8Score:Int = 1
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
//            print("前の画面から選択された行:\(sIndex)")

        
    }
    
//CAM-ICU
    //CAM 質問１のセグメント
    @IBAction func cam1Segment(_ sender: UISegmentedControl) {
        if cam1.selectedSegmentIndex == 0{
            cam1Score = 1
        }else{
            cam1Score = 0
        }
    }
    
    //CAM 質問2のセグメント
    @IBAction func cam2Segment(_ sender: UISegmentedControl) {
        if cam2.selectedSegmentIndex == 0{
            cam2Score = 1
        }else{
            cam2Score = 0
        }
    }
    
    //CAM 質問3のセグメント
    @IBAction func cam3Segment(_ sender: UISegmentedControl) {
        if cam3.selectedSegmentIndex == 0{
            cam3Score = 1
        }else{
            cam3Score = 0
        }
    }
    
    //CAM 質問4-aのセグメント
    @IBAction func cam4aSegment(_ sender: UISegmentedControl) {
        if cam4a.selectedSegmentIndex == 0{
            cam4aScore = 1
        }else{
            cam4aScore = 0
        }
    }
    
    //CAM　質問4-b
    @IBAction func cam4bSegment(_ sender: UISegmentedControl) {
        if cam4b.selectedSegmentIndex == 0{
            cam4bScore = 1
        }else{
            cam4bScore = 0
        }
    }
    
    //CAM　結果ボタン
    @IBAction func resultButton(_ sender: UIButton) {
        amountCam = cam1Score + cam2Score + cam3Score + cam4aScore + cam4bScore
        if amountCam == 0{
            resultLabel.text = "せん妄でない"
//        }else if amount == 5{
//            resultLabel.text = "せん妄"
        }else if cam1Score == 1 && cam2Score == 1 && cam3Score == 1 && cam4aScore == 1 && cam4bScore == 1{
            resultLabel.text = "せん妄"
            
//        }else if amount == 2{
//            resultLabel.text = ""
//        }else if amount == 1{
//            resultLabel.text = ""
            
        }else if cam3Score == 1{
            resultLabel.text = "せん妄"
        }else if cam4aScore == 1{
            resultLabel.text = "せん妄"
        }else if cam4bScore == 1{
            resultLabel.text = "せん妄"
//        }else{
//            resultLabel.text = ""
        }
    }
    
    
//ICDSD
    //ICD 質問１セグメント
    
    @IBAction func icd1Segment(_ sender: UISegmentedControl) {
        if icd1.selectedSegmentIndex == 0{
            icd1Score = 1
        }else{
            icd1Score = 2
        }
    }
    
    //ICD 質問２セグメント
    @IBAction func icd2Segment(_ sender: UISegmentedControl) {
        if icd2.selectedSegmentIndex == 0{
            icd2Score = 1
        }else{
            icd2Score = 2
        }
    }
    
    //ICD 質問３セグメント
    @IBAction func icd3Segment(_ sender: UISegmentedControl) {
        if icd3.selectedSegmentIndex == 0{
            icd3Score = 1
        }else{
            icd3Score = 2
        }
    }
    
    //ICD 質問４セグメント
    @IBAction func icd4Segment(_ sender: UISegmentedControl) {
        if icd4.selectedSegmentIndex == 0{
            icd4Score = 1
        }else{
            icd4Score = 2
        }
    }
    
    //ICD 質問５セグメント
    @IBAction func icd5Segment(_ sender: UISegmentedControl) {
        if icd5.selectedSegmentIndex == 0{
            icd5Score = 1
        }else{
            icd5Score = 2
        }
    }
    
    //ICD 質問６セグメント
    @IBAction func icd6Segment(_ sender: UISegmentedControl) {
        if icd6.selectedSegmentIndex == 0{
            icd6Score = 1
        }else{
            icd6Score = 2
        }
    }
    
    //ICD 質問７セグメント
    @IBAction func icd7Segment(_ sender: UISegmentedControl) {
        if icd7.selectedSegmentIndex == 0{
            icd7Score = 1
        }else{
            icd7Score = 2
        }
    }
    
    //ICD 質問８セグメント
    @IBAction func icd8Segment(_ sender: UISegmentedControl) {
        if icd8.selectedSegmentIndex == 0{
            icd8Score = 1
        }else{
            icd8Score = 2
        }
    }
    
    
    //ICD結果ボタン
    @IBAction func resultButton2(_ sender: UIButton) {
        amountIcd = icd1Score + icd2Score + icd3Score + icd4Score + icd5Score + icd6Score + icd7Score + icd8Score
        if amountIcd < 12{
            resultLabel2.text = "せん妄でない"
        }else if amountIcd >= 12{
            resultLabel2.text = "せん妄"
        }
    }
    
    //      amount = mapNumber + templatureNumber
//    totalScore.text = String(amount)
    
    



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
