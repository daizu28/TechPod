//
//  ViewController.swift
//  TechPod
//
//  Created by 小林玲衣奈 on 2020/09/04.
//  Copyright © 2020 com.litech. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //StoryBoradで扱うTableViewを宣言
    @IBOutlet var table: UITableView!
    
    //曲名を入れるための配列
    var songNameArray = [String]()
    //局のファイル名を入れるための配列
    var fileNameArray = [String]()
    //音楽家の画像を入れるための配列
    var imageNameArray = [String]()
    
    //音楽を再生するための変数
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //テーブルビューのデータソースメソッドはViewControllerクラスに書くよという設定
        table.dataSource = self
        
        //テーブルビューのデリゲートメソッドはViewControllerメソッドに書くよという設定
        table.delegate = self
        
        //soungNameArrayに曲名を入れていく
        songNameArray = ["カノン", "エリーゼのために", "G線上のアリア"]
        
        //fileNameArrayにファイル名を入れていく
        fileNameArray = ["cannon", "elise", "aria"]
        
        //imageNameArrayに曲の画像を入れていく
        imageNameArray = ["Pachelbel.jpg","Beethoven.jpg","Bach.jpg"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songNameArray.count
    }
    
    //ID付きのセルを取得して、セルフ属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        //セルにsongNameArrayの曲名を表示する
        cell?.textLabel?.text = songNameArray[indexPath.row]
    
        cell?.textLabel?.text = songNameArray[indexPath.row]
    
    return cell!
    
    }
    
    //セルが押された時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("\(songNameArray[indexPath.row])が選ばれました")
        
        //音楽ファイルの設定
        let audioPath = URL(fileURLWithPath: Bundle.main.path(forResource:
            fileNameArray[indexPath.row], ofType: "mp3")!)
    }


}

