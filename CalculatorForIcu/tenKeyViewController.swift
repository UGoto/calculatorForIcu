//
//  tenKeyViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/07/13.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

class tenKeyViewController: UIViewController,UITextFieldDelegate {
    var previousNumber:Double = 0;
    var performingMath = false
    var operation:Double = 0;
    
    @IBOutlet weak var tenkeyView: UIView!
    
    
//    //Tenkeyを隠すためのボタン
//    let closeBtn:UIButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
//Tenkey
    //pH
    @IBAction func tapPh(_ sender: UIButton) {
        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
        if performingMath == true {
            fv.phOfAbg.text = String(sender.tag)
            performingMath = false
        }else{
            fv.phOfAbg.text = fv.phOfAbg.text! + String(sender.tag)
        }
    }
    
    @IBAction func button(_ sender: UIButton) {
        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
        if sender.tag == 11{
            fv.phOfAbg.text = ""
        }
        if sender.tag == 10 {
            fv.phOfAbg.text = fv.phOfAbg.text! + "."
        }
        }
    
    //paco2
    @IBAction func tapPaco2(_ sender: UIButton) {
        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
        if performingMath == true {
            fv.paco2OfAbg.text = String(sender.tag)
            performingMath = false
        }else{
            fv.paco2OfAbg.text = fv.paco2OfAbg.text! + String(sender.tag)
        }
    }
    
    @IBAction func buttonPaco2(_ sender: UIButton) {
        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
        if sender.tag == 11{
            fv.paco2OfAbg.text = ""
        }
        if sender.tag == 10 {
            fv.paco2OfAbg.text = fv.paco2OfAbg.text! + "."
        }
    }
    
    //pao2
    //hco3
    //na
    //k
    //cl
    


    
//    @IBAction func tapOne(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = "1"
//    }
//    @IBAction func tapTwo(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = "2"
//    }
//    @IBAction func tapThree(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = "3"
//    }
//    @IBAction func tapFour(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = "4"
//    }
//    @IBAction func tapFive(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = "5"
//    }
//    @IBAction func tapSix(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = "6"
//    }
//    @IBAction func tapSeven(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = "7"
//    }
//    @IBAction func tapEight(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = "8"
//    }
//    @IBAction func tapNine(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = "9"
//    }
//    @IBAction func tapDecimal(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = "."
//    }
//    @IBAction func tapClear(_ sender: UIButton) {
//        let fv = self.presentingViewController?.childViewControllers[1] as! abgViewController
//        fv.phOfAbg.text = ""
//    }

//Enterボタン
    @IBAction func closeButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
