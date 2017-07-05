//
//  respiViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/04.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class respiViewController: UIViewController {

    @IBOutlet weak var paco2: UITextField!
    
    
    @IBAction func tapReturnPaco2(_ sender: UITextField) {
    }
    
    
    
    //appDelegateのインスタンスの作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

//重複するデータの遷移
    
    //血液ガス分析のページへ遷移
    @IBAction func buttonToAbg(_ sender: UIButton) {
        appDelegate.valueOfPaco2 = paco2.text!
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
