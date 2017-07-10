//
//  AppDelegate.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/06/18.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    //重複するデータをAppDelegateのプロパティーとして作成
    //呼吸アセスメント
    var valueOfTvv:Int = 0
    var valueOfAaDo2:Float = 0
    var valueOfPf:Float = 0
    var valueOfQt:Float = 0
    var valueOfCao2:Float = 0
    var valueOfDo2:Float = 0
    var valueOfVo2:Float = 0
    var valueOfOer:Float = 0
    
    //栄養アセスメント
    var mof:Float = 0
    var mof2:Float = 0
    var mof4:Float = 0
    var mof6:Float = 0
    var mof8:Float = 0
    var mof0:Float = 0
    var fof:Float = 0
    var fof2:Float = 0
    var fof4:Float = 0
    var fof6:Float = 0
    var fof8:Float = 0
    var fof0:Float = 0
    var bmi:Float = 0
    var loseWt:Float = 0
    var ee:Float = 0
    var nb:Float = 0
    var giveN:Float = 0
    var excreteN:Float = 0
    var casherN:Float = 0
    
    //重複のある入力項目
    var valueOfPao2:Float = 0
    var valueOfPaco2:Float = 0
    var valueOfFio2:Float = 0
    var valueOfrr:Float = 0
    var valueOfPh:Float = 0
    var valueOfHr:Float = 0
    var valueOfHco3:Float = 0
    var valueOfAge:Float = 0
    var valueOfNa:Float = 0
    var valueOfK:Float = 0
    var valueOfGcs:Float = 0
    var valueOfCre:Float = 0
    var valueOfPlt:Float = 0
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

