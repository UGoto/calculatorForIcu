//
//  PtInfoViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/06/18.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class PtInfoViewController: UIViewController {
        
        //前の画面から何行目が選択されたかわかる行番号を格納するプロパティ
        var sIndex = -1
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            print("前の画面から選択された行:\(sIndex)")

    }

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
