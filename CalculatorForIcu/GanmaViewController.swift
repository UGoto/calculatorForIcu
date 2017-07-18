//
//  GanmaViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/17.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class GanmaViewController: UIViewController {
    
    @IBOutlet weak var wt: UITextField!
    @IBOutlet weak var volumeOfMed: UITextField!
    @IBOutlet weak var totalV: UITextField!
    @IBOutlet weak var ganma: UITextField!
    @IBOutlet weak var resultBtn: UIButton!
  
    
    //appDelegateのインスタンスの作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //結果ボタンのデザイン　円形
        resultBtn.layer.cornerRadius = 20.0
        
    }
    
    @IBAction func resultBtn(_ sender: UIButton) {
        if wt.text == "" || volumeOfMed.text == "" || totalV.text == ""{
            print("入力されていない値があります")
        }else{
            ganma.text = String(0.06 * Float(wt.text!)! / ( Float(volumeOfMed.text!)! / Float(totalV.text!)!))
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
