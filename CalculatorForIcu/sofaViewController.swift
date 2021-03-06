//
//  sofaViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/04.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class sofaViewController: UIViewController {
    
    @IBOutlet weak var pfSeg: UISegmentedControl!
    @IBOutlet weak var pltSeg: UISegmentedControl!
    @IBOutlet weak var bilSeg: UISegmentedControl!
    @IBOutlet weak var mapSeg: UISegmentedControl!
    @IBOutlet weak var gcsSeg: UISegmentedControl!
    @IBOutlet weak var creSeg: UISegmentedControl!
//    @IBOutlet weak var hrSeg: UISegmentedControl!
    
    @IBOutlet weak var resultBtn: UIButton!
    @IBOutlet weak var total: UILabel!
    
    
    //appDelegateのインスタンスを作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    //合計点数の変数を作成
    var amount:Int = 0
    
    //セグメントが選択されない時の初期値の設定
    var pfNumber:Int = 0
    var pltNumber:Int = 0
    var bilNumber:Int = 0
    var mapNumber:Int = 0
    var gcsNumber:Int = 0
    var creNumber:Int = 0
//    var hrNumber:Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //結果ボタンのデザイン
            resultBtn.layer.cornerRadius = 20.0
        
//    //AppDelegateから値を引き受ける
//        //P/F
        if appDelegate.valueOfPao2 == 0 || appDelegate.valueOfFio2 == 0{
            pfSeg.selectedSegmentIndex = 0
            pfNumber = 0
            print(pfSeg.selectedSegmentIndex)
        }else if appDelegate.valueOfPf >= 400{
            pfSeg.selectedSegmentIndex = 0
            pfNumber = 0
        }else if appDelegate.valueOfPf < 400 && appDelegate.valueOfPf >= 300{
            pfSeg.selectedSegmentIndex = 1
            pfNumber = 1
        }else if appDelegate.valueOfPf < 300 && appDelegate.valueOfPf >= 200{
            pfSeg.selectedSegmentIndex = 2
            pfNumber = 2
        }else if appDelegate.valueOfPf < 200 && appDelegate.valueOfPf >= 100{
            pfSeg.selectedSegmentIndex = 3
            pfNumber = 3
        }else if appDelegate.valueOfPf < 100 {
            pfSeg.selectedSegmentIndex = 4
            pfNumber = 4
        }
//
//        //GCS
        if appDelegate.valueOfGcs >= 15 || appDelegate.valueOfGcs < 3 {
            gcsSeg.selectedSegmentIndex = 0
            gcsNumber = 0
        }else if appDelegate.valueOfGcs < 15 && appDelegate.valueOfGcs >= 13 {
            gcsSeg.selectedSegmentIndex = 1
            gcsNumber = 1
        }else if appDelegate.valueOfGcs < 13 && appDelegate.valueOfGcs >= 10 {
            gcsSeg.selectedSegmentIndex = 2
            gcsNumber = 2
        }else if appDelegate.valueOfGcs < 10 && appDelegate.valueOfGcs >= 6 {
            gcsSeg.selectedSegmentIndex = 3
            gcsNumber = 3
        }else if appDelegate.valueOfGcs < 6 || appDelegate.valueOfGcs >= 3 {
            gcsSeg.selectedSegmentIndex = 4
            gcsNumber = 4
        }
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        //AppDelegateから値を引き受ける
//        //P/F
//        if appDelegate.valueOfPao2 == 0 || appDelegate.valueOfFio2 == 0{
//            pfSeg.selectedSegmentIndex = 0
//            pfNumber = 0
//            print(pfSeg.selectedSegmentIndex)
//        }else if appDelegate.valueOfPf >= 400{
//            pfSeg.selectedSegmentIndex = 0
//            pfNumber = 0
//        }else if appDelegate.valueOfPf < 400 && appDelegate.valueOfPf >= 300{
//            pfSeg.selectedSegmentIndex = 1
//            pfNumber = 1
//        }else if appDelegate.valueOfPf < 300 && appDelegate.valueOfPf >= 200{
//            pfSeg.selectedSegmentIndex = 2
//            pfNumber = 2
//        }else if appDelegate.valueOfPf < 200 && appDelegate.valueOfPf >= 100{
//            pfSeg.selectedSegmentIndex = 3
//            pfNumber = 3
//        }else if appDelegate.valueOfPf < 100 {
//            pfSeg.selectedSegmentIndex = 4
//            pfNumber = 4
//        }
//        
//        //GCS
//        if appDelegate.valueOfGcs >= 15 || appDelegate.valueOfGcs < 3 {
//            gcsSeg.selectedSegmentIndex = 0
//            gcsNumber = 0
//        }else if appDelegate.valueOfGcs < 15 && appDelegate.valueOfGcs >= 13 {
//            gcsSeg.selectedSegmentIndex = 1
//            gcsNumber = 1
//        }else if appDelegate.valueOfGcs < 13 && appDelegate.valueOfGcs >= 10 {
//            gcsSeg.selectedSegmentIndex = 2
//            gcsNumber = 2
//        }else if appDelegate.valueOfGcs < 10 && appDelegate.valueOfGcs >= 6 {
//            gcsSeg.selectedSegmentIndex = 3
//            gcsNumber = 3
//        }else if appDelegate.valueOfGcs < 6 || appDelegate.valueOfGcs >= 3 {
//            gcsSeg.selectedSegmentIndex = 4
//            gcsNumber = 4
//        }
//    }
//    

//セグメントの設定
    //PaO2/FiO2のセグメント設定
    @IBAction func pfSeg(_ sender: UISegmentedControl) {
        if pfSeg.selectedSegmentIndex == 0{
            pfNumber = 0
        }else if pfSeg.selectedSegmentIndex == 1{
            pfNumber = 1
        }else if pfSeg.selectedSegmentIndex == 2{
            pfNumber = 2
        }else if pfSeg.selectedSegmentIndex == 3{
            pfNumber = 3
        }else if pfSeg.selectedSegmentIndex == 4{
            pfNumber = 4
        }
    }
    
    
    //血小板のセグメント設定
    @IBAction func pltSeg(_ sender: UISegmentedControl) {
        if pltSeg.selectedSegmentIndex == 0{
            pltNumber = 0
        }else if pltSeg.selectedSegmentIndex == 1{
            pltNumber = 1
        }else if pltSeg.selectedSegmentIndex == 2{
            pltNumber = 2
        }else if pltSeg.selectedSegmentIndex == 3{
            pltNumber = 3
        }else if pltSeg.selectedSegmentIndex == 4{
            pltNumber = 4
        }
    }
    
    //ビリルビンのセグメント設定
    @IBAction func bilSeg(_ sender: UISegmentedControl) {
        if bilSeg.selectedSegmentIndex == 0{
            bilNumber = 0
        }else if bilSeg.selectedSegmentIndex == 1{
            bilNumber = 1
        }else if bilSeg.selectedSegmentIndex == 2{
            bilNumber = 2
        }else if bilSeg.selectedSegmentIndex == 3{
            bilNumber = 3
        }else if bilSeg.selectedSegmentIndex == 4{
            bilNumber = 4
        }
    }
    
    //平均動脈圧のセグメント設定
    @IBAction func mapSeg(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            mapNumber = 0
        }else if sender.selectedSegmentIndex == 1{
            mapNumber = 1
        }else if sender.selectedSegmentIndex == 2{
            mapNumber = 2
        }else if sender.selectedSegmentIndex == 3{
            mapNumber = 3
        }else if sender.selectedSegmentIndex == 4{
            mapNumber = 4
        }
    }
    
      //GCSのセグメントの設定
    @IBAction func gcsSeg(_ sender: UISegmentedControl) {
        if gcsSeg.selectedSegmentIndex == 0{
            gcsNumber = 0
        }else if gcsSeg.selectedSegmentIndex == 1{
            gcsNumber = 1
        }else if gcsSeg.selectedSegmentIndex == 2{
            gcsNumber = 2
        }else if gcsSeg.selectedSegmentIndex == 3{
            gcsNumber = 3
        }else if gcsSeg.selectedSegmentIndex == 4{
            gcsNumber = 4
        }
    }
    
    //クレアチニンのセグメントの設定
    @IBAction func creSeg(_ sender: UISegmentedControl) {
        if creSeg.selectedSegmentIndex == 0{
            creNumber = 0
        }else if creSeg.selectedSegmentIndex == 1{
            creNumber = 1
        }else if creSeg.selectedSegmentIndex == 2{
            creNumber = 2
        }else if creSeg.selectedSegmentIndex == 3{
            creNumber = 3
        }else if creSeg.selectedSegmentIndex == 4{
            creNumber = 4
        }
    }
    
//    //尿量のセグメントの設定
//    @IBAction func hrSeg(_ sender: UISegmentedControl) {
//        if sender.selectedSegmentIndex == 0{
//            hrNumber = 0
//        }else if sender.selectedSegmentIndex == 1{
//            hrNumber = 3
//        }else if sender.selectedSegmentIndex == 2{
//            hrNumber = 4
//        }
//    }

//平均動脈圧の詳細
    @IBAction func mapDetail(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "平均動脈圧", message: "0点: なし7\n1点: <70mmHg\n2点: ドパミン ≦ 5γ or ドブタミン投与\n3点: ドパミン > 5γ or エピネフリン ≦ 0.1γ or ノルアドレナリン ≦ 0.1γ\n4点: ドパミン > 15γ or エピネフリン > 0.1γ or ノルアドレナリン > 0.1γ", preferredStyle:  .alert)
        
        let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = NSTextAlignment.left
        
        let messageText = NSMutableAttributedString(
            string: "0点 : なし7\n1点: <70mmHg\n2点: ドパミン ≦ 5γ or ドブタミン投与\n3点: ドパミン > 5γ or エピネフリン ≦ 0.1γ or ノルアドレナリン ≦ 0.1γ\n4点: ドパミン > 15γ or エピネフリン > 0.1γ or ノルアドレナリン > 0.1γ",
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

//クレアチニン　or 尿量の詳細
    @IBAction func creDetail(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "平均動脈圧", message: "0点: クレアチニン < 1.2\n1点: クレアチニン 1.2 - 1.9\n2点: クレアチニン 2.0 - 3.4\n3点:クレアチニン 3.5 - 4.9 or 尿量 < 500ml/日\n4点: クレアチニン > 5.0 or 尿量　< 200ml/日", preferredStyle:  .alert)
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = NSTextAlignment.left
        
        let messageText = NSMutableAttributedString(
            string: "0点: クレアチニン < 1.2\n1点: クレアチニン 1.2 - 1.9\n2点: クレアチニン 2.0 - 3.4\n3点:クレアチニン 3.5 - 4.9 or 尿量 < 500ml/日\n4点: クレアチニン > 5.0 or 尿量　< 200ml/日",
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
    

    
    
//結果buttonが押された時、totalに合計点が出力される
    @IBAction func totalScoreButton(_ sender: UIButton) {
        amount = pfNumber + pltNumber + bilNumber + mapNumber + gcsNumber + creNumber
        total.text = String(amount) + "点"
    }
    
//値の遷移
    //APACHEへ画面の遷移（GCS）
    @IBAction func buttonToApache(_ sender: UIButton) {
        appDelegate.valueOfGcs = Float(gcsSeg.selectedSegmentIndex)
        appDelegate.valueOfCre = Float(creSeg.selectedSegmentIndex)
    }
    
    
//下の5つのボタンで画面の遷移
    @IBAction func tapButtonToApache(_ sender: UIButton) {
        performSegue(withIdentifier: "showAFromSofa", sender: nil )
    }

    @IBAction func tapButtonToRespi(_ sender: UIButton) {
        performSegue(withIdentifier: "showRespiFromSofa", sender: nil )
    }
    
    @IBAction func tapButtonToAbg(_ sender: UIButton) {
        performSegue(withIdentifier: "showAbgFromSofa", sender: nil )
    }
    @IBAction func tapButtonToD(_ sender: UIButton) {
        performSegue(withIdentifier: "showDFromSofa", sender: nil )
    }
    
    @IBAction func tapButtonToN(_ sender: UIButton) {
        performSegue(withIdentifier: "showNFromSofa", sender: nil )
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
