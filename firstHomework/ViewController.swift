//
//  ViewController.swift
//  firstHomework
//
//  Created by 沈庭鋒 on 2023/3/3.
//

import UIKit

class ViewController: UIViewController {
    
    // 取得螢幕的尺寸
    let fullScreenSize = UIScreen.main.bounds.size

    // 預設的按鈕樣式
    var myButton = UIButton(type: .contactAdd)
    
    var myLabel = UILabel(frame: CGRect(x: 100, y: 300, width: 200, height: 100))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        myButton.center = CGPoint(
          x: fullScreenSize.width * 0.4,
          y: fullScreenSize.height * 0.2)
        self.view.addSubview(myButton)

        myButton = UIButton(type: .infoLight)
        myButton.center = CGPoint(
          x: fullScreenSize.width * 0.6,
          y: fullScreenSize.height * 0.2)
        self.view.addSubview(myButton)
        
        myLabel.text = "這是一個標籤"
        myLabel.textColor = .white
        myLabel.backgroundColor = .darkGray
        myLabel.textAlignment = .center
        self.view.addSubview(myLabel)

        myButton.addTarget(
            self,
            action: #selector(ViewController.clickButton),
            for: .touchUpInside)
        
        
    }
    
    @objc func clickButton() {
        // 為基底的 self.view 的底色在黑色與白色兩者間切換
        if self.view.backgroundColor!.isEqual(
            UIColor.red) {
            self.view.backgroundColor =
            UIColor.blue
        } else {
            self.view.backgroundColor =
                .red
        }
    }
    
   
    
}
