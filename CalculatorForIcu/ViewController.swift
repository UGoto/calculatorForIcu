//
//  ViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/06/18.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit
import GoogleMobileAds

//プロトコルの設定
class ViewController: UIViewController {
    //広告用
    let AdMobID = "ca-app-pub-8485715608308777~1331315398"
    let TEST_ID = "ca-app-pub-3940256099942544/2934735716"
    
    let AdMobTest:Bool = false
    
    
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
        
        var admobView: GADBannerView = GADBannerView()
        admobView = GADBannerView(adSize:kGADAdSizeBanner)
        admobView.frame.origin = CGPoint(x: 0, y: self.view.frame.size.height - admobView.frame.height)
        
        admobView.frame.size = CGSize(width: self.view.frame.width, height: admobView.frame.height)
        admobView.adUnitID = AdMobID
        admobView.rootViewController = self
        
        let admobRequest:GADRequest = GADRequest()
        
        if AdMobTest {
            if SimulatorTest {
                admobRequest.testDevices = [kGADSimulatorID]
            }
            else {
                admobRequest.testDevices = [TEST_DEVICE_ID]
            }
            
        }
        
        admobView.load(admobRequest)
        
        self.view.addSubview(admobView)

        
        
        
        
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

