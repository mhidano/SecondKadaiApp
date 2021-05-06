//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 肥田野守和 on 2021/05/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TextFieldにヒント表示
        InputTextField.placeholder = "山田　太郎"
    }
    
    // segueが動作することをViewControllerに通知するメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 遷移先のViewControllerを取得
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先で用意した変数に値を渡す
        resultViewController.outputValue = self.InputTextField.text!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        // 他の画面から　segue を使って戻ってきた時に呼ばれる
    }

}

