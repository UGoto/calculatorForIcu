//
//  dicViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/04.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class dicViewController: UIViewController {
    @IBOutlet weak var btSeg: UISegmentedControl!
    @IBOutlet weak var hrSeg: UISegmentedControl!
    @IBOutlet weak var rrSeg: UISegmentedControl!
    @IBOutlet weak var wbcSeg: UISegmentedControl!
    @IBOutlet weak var pltSeg: UISegmentedControl!
    @IBOutlet weak var ptSeg: UISegmentedControl!
    @IBOutlet weak var fdpSeg: UISegmentedControl!
    
    
    
    @IBOutlet weak var totalScore: UITextField!
    
    //appDelegateのインスタンスを作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    //合計点数の変数を作成
    var amount:Int = 0
    //セグメントが選択されない時の初期値の設定
    var btNumber:Int = 0
    var hrNumber:Int = 0
    var rrNumber:Int = 0
    var wbcNumber:Int = 0
    var pltNumber:Int = 0
    var ptNumber:Int = 0
    var fdpNumber:Int = 0

    @IBAction func tapButtonNutri(_ sender: UIButton) { performSegue(withIdentifier: "showNutri", sender: nil )
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //体温のセグメント設定
    @IBAction func btSeg(_ sender: UISegmentedControl) {
        if btSeg.selectedSegmentIndex == 0{
            btNumber = 0
        }else if btSeg.selectedSegmentIndex == 1{
            btNumber = 1
        }
    }
    
    //心拍数のセグメント設定
    @IBAction func hrSeg(_ sender: UISegmentedControl) {
        if hrSeg.selectedSegmentIndex == 0{
            hrNumber = 0
        }else if hrSeg.selectedSegmentIndex == 1{
            hrNumber = 1
        }
    }
    
    //呼吸数のセグメント設定
    @IBAction func rrSeg(_ sender: UISegmentedControl) {
        if rrSeg.selectedSegmentIndex == 0{
            rrNumber = 0
        }else if rrSeg.selectedSegmentIndex == 1{
            rrNumber = 1
        }
    }
    
    //WBCのセグメント設定
    @IBAction func wbcSeg(_ sender: UISegmentedControl) {
        if wbcSeg.selectedSegmentIndex == 0{
            wbcNumber = 0
        }else if wbcSeg.selectedSegmentIndex == 1{
            wbcNumber = 1
        }
    }
    
    //血小板のセグメント設定
    @IBAction func pltSeg(_ sender: UISegmentedControl) {
        if pltSeg.selectedSegmentIndex == 0{
            pltNumber = 0
        }else if pltSeg.selectedSegmentIndex == 1{
            pltNumber = 1
        }else{
            pltNumber = 3
        }
        
    }
    
    //PTのセグメント設定
    @IBAction func ptSeg(_ sender: UISegmentedControl) {
        if ptSeg.selectedSegmentIndex == 0{
            ptNumber = 0
        }else if ptSeg.selectedSegmentIndex == 1{
            ptNumber = 1
        }
    }
    
    //血清FDPのセグメント設定
    @IBAction func fdpSeg(_ sender: UISegmentedControl) {
        if fdpSeg.selectedSegmentIndex == 0{
            fdpNumber = 0
        }else if fdpSeg.selectedSegmentIndex == 1{
            fdpNumber = 1
        }else{
            fdpNumber = 3
        }
    }
    
    
    @IBAction func totalScoreButton(_ sender: UIButton) {
        if btSeg.selectedSegmentIndex == 1 && hrSeg.selectedSegmentIndex == 1 && rrSeg.selectedSegmentIndex == 1{
            amount = 3 + pltNumber + ptNumber + fdpNumber
            totalScore.text = String(amount)
        }else if(btSeg.selectedSegmentIndex == 1 && hrSeg.selectedSegmentIndex == 1 && wbcSeg.selectedSegmentIndex == 1){
            amount = 3 + pltNumber + ptNumber + fdpNumber
            totalScore.text = String(amount)
        }else if(btSeg.selectedSegmentIndex == 1 && rrSeg.selectedSegmentIndex == 1 && wbcSeg.selectedSegmentIndex == 1){
            amount = 3 + pltNumber + ptNumber + fdpNumber
            totalScore.text = String(amount)
        }else if(rrSeg.selectedSegmentIndex == 1 && hrSeg.selectedSegmentIndex == 1 && wbcSeg.selectedSegmentIndex == 1){
            amount = 3 + pltNumber + ptNumber + fdpNumber
            totalScore.text = String(amount)
        }else if(btSeg.selectedSegmentIndex == 1 && hrSeg.selectedSegmentIndex == 1 && rrSeg.selectedSegmentIndex == 1 && wbcSeg.selectedSegmentIndex == 1){
            amount = 3 + pltNumber + ptNumber + fdpNumber
            totalScore.text = String(amount)
        }else{
            amount = pltNumber + ptNumber + fdpNumber
            totalScore.text = String(amount)
        }
        
        if amount >= 4 {
            totalScore.text = "DIC"
        }else{
            totalScore.text = "DICでない"
        }
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
