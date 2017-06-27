//
//  ViewController.swift
//  CalculatorForIcu
//
//  Created by Yuji Yamamoto on 2017/06/18.
//  Copyright © 2017年 Yuji Yamamoto. All rights reserved.
//

import UIKit

//プロトコルの設定
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var categoryView: UITableView!

    var categoryList = ["患者基本データ","せん妄アセスメント"]
    
    var selectNumber:Int = 0
    
    //選択された行番号
    var selectedIndex = -1 //全く選択されていないときはー１が入っているようにするため
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //②行数を決定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    //③リストに表示する文字列を決定し表示する
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //表示するセルの中身を作る
        cell.textLabel?.text = categoryList[indexPath.row]
        cell.textLabel?.textColor = UIColor.blue
        cell.textLabel?.font = UIFont.systemFont(ofSize:20)
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
    
        return cell
    }
    
    
 
    
    //1枚目から２枚目に行番号を送るための作業
    //セルがタップ（選択）されたとき発動
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //セグエを指定して画面移動
        if indexPath.row == 0{
            performSegue(withIdentifier: "showPtInfo", sender: indexPath.row)
            selectNumber = indexPath.row
        }else if indexPath.row == 1{
            performSegue(withIdentifier: "showAssessDeli", sender: indexPath.row)
            selectNumber = indexPath.row
        }
        
        print("選択されたデータ：\(categoryList[indexPath.row])") //この中で行番号がわかる ここでわかる行番号を２枚目に代入したい。なので、メンバ変数を使う。var selectedIndex = -1を使う
        
        
        //選択された行番号をメンバ変数に格納する
        //ここでselectedIdexに値を入れている理由と、なぜここに入れているわけ？
//        selectedIndex = indexPath.row
        
        
        
    
        
    }
    
    //セグエを通って次の画面へ移動するとき
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //次の画面（PtInfoViewController)のインスタンス化(as:ダウンキャスト型変換)
        //ptInfovc:PtInfoviewcontroller
        //assessfrvc:AssessForRespiViweController
        //遷移先のviewcontrollerを格納している
        if segue.identifier == "showPtInfo"{
        var ptInfovc = segue.destination as! PtInfoViewController
        }else if segue.identifier == "showAssessDeli"{
        var afrvc = segue.destination as! AssessDeliViewController
        }
        //次の画面のプロパティに選択された行番号を指定 つまり、このプロパティviewDetailControllerのメンバ変数　detailviewcontorollerへ！
//            ptInfovc.sIndex = selectedIndex
//            afrvc.sIndex = selectedIndex
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

