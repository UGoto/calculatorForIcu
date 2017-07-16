//
//  ViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/06/18.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

//プロトコルの設定
class ViewController: UIViewController {
    @IBOutlet weak var respiBtn: UIButton!
    @IBOutlet weak var nutriBtn: UIButton!
    @IBOutlet weak var abgBtn: UIButton!
    @IBOutlet weak var dBtn: UIButton!
    @IBOutlet weak var sBtn: UIButton!
    @IBOutlet weak var aBtn: UIButton!
    @IBOutlet weak var deliBtn: UIButton!
    @IBOutlet weak var gBtn: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        respiBtn.layer.cornerRadius = 20.0
        nutriBtn.layer.cornerRadius = 20.0
        abgBtn.layer.cornerRadius = 20.0
        dBtn.layer.cornerRadius = 20.0
        sBtn.layer.cornerRadius = 20.0
        aBtn.layer.cornerRadius = 20.0
        deliBtn.layer.cornerRadius = 20.0
        gBtn.layer.cornerRadius = 20.0
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }


}

