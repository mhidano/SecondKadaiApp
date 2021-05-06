//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by 肥田野守和 on 2021/05/05.
//

import UIKit

class ResultViewController: UIViewController {

    // 2画面目のLabelをStoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!
    
    // 遷移元から受けとるための変数を宣言（遷移元が遷移先に渡したい値を格納するための変数を用意）
    var outputValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 遷移元から受け取った値をラベルに格納
        label.text = "こんにちは、\(outputValue)さん"

    }
    
}
