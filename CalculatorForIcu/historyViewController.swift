//
//  historyViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/06/28.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit
import CoreData

class historyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var historyTableView: UITableView!
    
    var resultlist = [""]
    var selectedIndex = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //CoreDataからdataを読み込む処理
//        read()

       
    }
    
    
    //行数を決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultlist.count
    }
    
    //③リストに表示する文字列を決定し表示する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //表示するセルの中身を作る
        cell.textLabel?.text = resultlist[indexPath.row]
        cell.textLabel?.textColor = UIColor.brown
        cell.textLabel?.font = UIFont.systemFont(ofSize:15)
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("選択されたデータ：\(resultlist[indexPath.row])") //この中で行番号がわかる
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "showDetail", sender: nil )
        
    }
    
    //detailViewContollerへ遷移
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dvc = segue.destination as! DetailViewController
        
        dvc.sIndex = selectedIndex
        
    }
    

    
    
    //すでに存在するデータの読み込み処理（READ）
    func read(){
        //AppDelegateを使う準備をしておく
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //エンティティを操作するためのオブジェクトを作成
        let viewContext = appDelegate.persistentContainer.viewContext
        
        //どのエンティティからデータを取得してくるか設定
        let query:NSFetchRequest<History> = History.fetchRequest()
        
        //エラーが起きやすく、例外処理を書く必要がありそうな処理はdoで囲んでおく必要がある
        //例）CoreDataのようなDB処理、インターネット接続
        
        
        do{
            //データを一括取得する。今回fetchは全行とってくるもの　try以降の処理がエラーが起きそうなのでdoで囲んである（例外処理）。
            let fetchResults = try viewContext.fetch(query)
            
            //ループで1行ずつ表示
            for result: AnyObject in fetchResults {
                let tv: String = result.value(forKey:"tv") as! String
                
                let saveData: Date = result.value(forKey:"saveData") as! Date
                
                print("title:\(result) saveDate:\(saveData)")
                
                
            }
            
            
        }catch{
            //エラーが起きた時に通常処理の代わりに行う処理を記述（例外処理を記述する場所）
            
            
        }
    }

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
