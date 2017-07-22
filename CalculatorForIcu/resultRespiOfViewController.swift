//
//  resultRespiOfViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/06.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class resultRespiOfViewController: UIViewController {

    @IBOutlet weak var ttv: UITextField!
    @IBOutlet weak var AaDo2: UITextField!
    @IBOutlet weak var pf: UITextField!
    @IBOutlet weak var do2: UITextField!
    @IBOutlet weak var qt: UITextField!
    @IBOutlet weak var cao2: UITextField!
    @IBOutlet weak var vo2: UITextField!
    @IBOutlet weak var oer: UITextField!
    
    //appDelegateのインスタンスの作成
    let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
//        //呼吸アセスメントのページからデータを受け取る
        super.viewDidLoad()
        ttv.text = String(appDelegate.valueOfTvv)
        AaDo2.text = String(appDelegate.valueOfAaDo2)
        pf.text = String(appDelegate.valueOfPf)
        do2.text = String(appDelegate.valueOfDo2)
        qt.text = String(appDelegate.valueOfQt)
        cao2.text = String (appDelegate.valueOfCao2)
        vo2.text = String(appDelegate.valueOfVo2)
        oer.text = String(appDelegate.valueOfOer)
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        //呼吸アセスメントのページからデータを受け取る
//        super.viewDidLoad()
//        ttv.text = String(appDelegate.valueOfTvv)
//        AaDo2.text = String(appDelegate.valueOfAaDo2)
//        pf.text = String(appDelegate.valueOfPf)
//        do2.text = String(appDelegate.valueOfDo2)
//        qt.text = String(appDelegate.valueOfQt)
//        cao2.text = String (appDelegate.valueOfCao2)
//        vo2.text = String(appDelegate.valueOfVo2)
//        oer.text = String(appDelegate.valueOfOer)
//    }
//    
    

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
