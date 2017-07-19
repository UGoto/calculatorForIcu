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
    @IBOutlet weak var result1Btn: UIButton!
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
    @IBOutlet weak var result2Btn: UIButton!
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
            result1Btn.layer.cornerRadius = 20.0
            result2Btn.layer.cornerRadius = 20.0
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
        }else{
            resultLabel.text = ""
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

//CAMICU　1.
    @IBAction func acuteDetail(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "急性発症または変動性の経過", message: "基準線からの精神状態の急性変化があるか？または患者の精神状態が過去２４時間で変動したか？", preferredStyle:  .alert)
        
        //messageを左寄せ
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.left
        
        let messageText = NSMutableAttributedString(
            string: "基準線からの精神状態の急性変化があるか？または患者の精神状態が過去２４時間で変動したか？",
            attributes: [
                NSParagraphStyleAttributeName: paragraphStyle,
                NSFontAttributeName: UIFont.systemFont(ofSize: 13.0)
            ]
        )
        
        alertController.setValue(messageText, forKey: "attributedMessage")
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }
    

//CAMICU 2.
    @IBAction func AttentionDetail(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "注意力の欠如", message: "① 次の10個の数字を読み上げる：2,3,1,4,5,7,1,9,3,1\n② 1の時に手を握ってくださいと指示する。\nエラー:1の時に手を握りしめなかった回数 または、1以外の時に手を握りしめた回数\nスコア:エラーの回数", preferredStyle:  .alert)
        
        //messageを左寄せ
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.left
        
        let messageText = NSMutableAttributedString(
            string: "① 次の10個の数字を読み上げる：2,3,1,4,5,7,1,9,3,1\n② 1の時に手を握ってくださいと指示。\nエラー:1の時に手を握りしめなかった回数 または1以外の時に手を握りしめた回数\nスコア:エラーの回数",
            attributes: [
                NSParagraphStyleAttributeName: paragraphStyle,
                NSFontAttributeName: UIFont.systemFont(ofSize: 13.0)
            ]
        )
        
        alertController.setValue(messageText, forKey: "attributedMessage")
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }

//CAMICU 3.
    
    @IBAction func ideaDetail(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "無秩序な思考", message:"1.石は水に浮くか？(葉っぱは水に浮くか？)\n2.魚は海にいるか？(像は海にいるか)\n3.1グラムは2グラムよりも重いか？(2グラムは1グラムよりも軽思いか？)\n4.釘を打つのにハンマーを使うか？(木を切るのにハンマーを使うか？)\n5.指示:２本の指をあげてみせ、同じことをさせる。ハンチの手で同じことをさせる。", preferredStyle:  .alert)
        
        //messageを左寄せ
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.left
        
        let messageText = NSMutableAttributedString(
            string: "1.石は水に浮くか？(葉っぱは水に浮くか？)\n2.魚は海にいるか？(像は海にいるか)\n3.1グラムは2グラムよりも重いか？(2グラムは1グラムよりも軽思いか？)\n4.釘を打つのにハンマーを使うか？(木を切るのにハンマーを使うか？)\n5.指示:２本の指をあげてみせ、同じことをさせる。ハンチの手で同じことをさせる。",
            attributes: [
                NSParagraphStyleAttributeName: paragraphStyle,
                NSFontAttributeName: UIFont.systemFont(ofSize: 13.0)
            ]
        )
        
        alertController.setValue(messageText, forKey: "attributedMessage")
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
