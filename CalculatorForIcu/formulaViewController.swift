//
//  formulaViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/06/28.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class formulaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //活動係数
    @IBAction func coActive(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "活動係数", message: "1.0 - 1.1 (寝たきり)\n1.2 (ベッド上安静)\n1.3 (ベッド以外での活動)\n1.5 (やや低い)\n1.7 (適度)\n1.9 (高い)", preferredStyle:  .alert)
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }
    
    //ストレス係数
    @IBAction func coStress(_ sender: UIButton) {
        //部品のアラートを作成
        let alertController = UIAlertController(title: "ストレス係数", message:"手術：1.1(軽度),1.2(中等度),1.8(高度)\n外傷：1.35(骨折),1.6(頭部損傷でステロイド使用)\n感染症：1.2(軽度),1.5(中程度)\n熱傷：1.5(体表面積の40％),1.95(体表面積の100％)\nがん：1.1-1.3\n体温：36℃から1℃上昇ごとに0.2増加", preferredStyle:  .alert)
        
        //アラートにOKボタンを追加
        alertController.addAction(UIAlertAction(title: "OK", style:  .default, handler: nil))
        
        //アラートを表示する
        present(alertController,animated: true,completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}
