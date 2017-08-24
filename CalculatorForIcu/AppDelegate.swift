//
//  AppDelegate.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/06/18.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit
import CoreData
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    //重複するデータをAppDelegateのプロパティーとして作成
    //呼吸アセスメント
    var valueOfTvv:Float = 0
    var valueOfAaDo2:Float = 0
    var valueOfPf:Float = 0
    var valueOfQt:Float = 0
    var valueOfCao2:Float = 0
    var valueOfDo2:Float = 0
    var valueOfVo2:Float = 0
    var valueOfOer:Float = 0
    var valueOfPres:Float = 0
    var valueOfVapor:Float = 0
    var valueOfBreathe:Float = 0
    
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
    var valueOfPlt:Int = 0
    
//コアデータ見える化にするため
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        GADMobileAds.configure(withApplicationID: "ca-app-pub-8485715608308777~1331315398")
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

    // MARK: - Core Data stack
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "sampleCoreData")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }


}

