//
//  DetailViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/15.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var myTextView: UITextView!
    var sIndex = -1

    override func viewDidLoad() {
        super.viewDidLoad()
        print("前の画面から選択された行\(sIndex)")
        
        switch sIndex{
        case 0:
            mylabel.text = ""
            myTextView.text = ""
            
        default:
            mylabel.text = ""
            myTextView.text = ""

        // Do any additional setup after loading the view.
    }
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
