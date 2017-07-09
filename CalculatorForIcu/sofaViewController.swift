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
    @IBOutlet weak var hrSeg: UISegmentedControl!
    
    @IBOutlet weak var totalScore: UITextField!
    
    
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
    var hrNumber:Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
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
        if sender.selectedSegmentIndex == 0{
            gcsNumber = 0
        }else if sender.selectedSegmentIndex == 1{
            gcsNumber = 1
        }else if sender.selectedSegmentIndex == 2{
            gcsNumber = 2
        }else if sender.selectedSegmentIndex == 3{
            gcsNumber = 3
        }else if sender.selectedSegmentIndex == 4{
            gcsNumber = 4
        }
    }
    
    //クレアチニンのセグメントの設定
    @IBAction func creSeg(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            creNumber = 0
        }else if sender.selectedSegmentIndex == 1{
            creNumber = 1
        }else if sender.selectedSegmentIndex == 2{
            creNumber = 2
        }else if sender.selectedSegmentIndex == 3{
            creNumber = 3
        }else if sender.selectedSegmentIndex == 4{
            creNumber = 4
        }
    }
    
    //尿量のセグメントの設定
    @IBAction func hrSeg(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            hrNumber = 0
        }else if sender.selectedSegmentIndex == 1{
            hrNumber = 3
        }else if sender.selectedSegmentIndex == 2{
            hrNumber = 4
        }
    }
    
    
    //結果buttonが押された時、totalに合計点が出力される
    @IBAction func totalScoreButton(_ sender: UIButton) {
        amount = pfNumber + pltNumber + bilNumber + mapNumber + gcsNumber + creNumber + hrNumber
        totalScore.text = String(amount)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //セグメントの高さ調整
//    extension UISegmentedControl {
//        func makeMultiline(withFontName fontName: String, fontSize: CGFloat, textColor: UIColor){
//        }
//    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
