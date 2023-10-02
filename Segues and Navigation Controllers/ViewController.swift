//
//  ViewController.swift
//  Segues and Navigation Controllers
//
//  Created by 曹家瑋 on 2023/9/27.
//

import UIKit

// First ViewController(紅色)
class ViewController: UIViewController {

    /// 設置輸入欄位（輸入的內容會呈現在下一個頁面的Navigation Bar 標題）
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // 是一個 Unwind Segue，用於從其他視圖控制器返回到這個視圖控制器。
    // 這是在 First ViewController(紅色) 設置的，因此會回到該Controller
    // 可以在此函數內加入任何在進行 Unwind Segue 時需要執行的程式碼。
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }
    
    // 此方法會在視圖控制器跳轉之前被呼叫。
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 將目標視圖控制器的導航標題設為textField的文字。
        segue.destination.navigationItem.title = textField.text
    }
    
    
}

