//
//  HomeViewController.swift
//  FDMSwift
//
//  Created by cqz on 17/2/11.
//  Copyright © 2017年 cqz. All rights reserved.
//

import UIKit

typealias FDMCharBlock = (_ ch : Character) ->Void

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
    }
    
    //MARK: methods
    func initUI() {
        
        self.title = "登录"
        
        let trimString = "gdhasvbgeuiwqgfuiewhbqqqqqqqqqqqucbnwobncuewhbndx"
        trimStringMethods(trimString) { (ch) in
            
            print("最大的字符串是\(ch)")
        }
        
    }
    
    func trimStringMethods(_ trimString : String, success: FDMCharBlock){
        
        var bigDictionary : Dictionary<Character,Int> = [:]
        
        for ch in trimString.characters {
            
            let num = bigDictionary[ch]
            
            if num == nil {
                bigDictionary[ch] = 1
            } else {
                bigDictionary[ch] = num! + 1
            }
        }
        
        var maxCount : Int = 0
        
        bigDictionary.forEach { (key: Character, value: Int) in
            
            if (value > maxCount) {
                maxCount = value
            }
        }
        
        for (ch, num) in bigDictionary {
            
            if num == maxCount {
                
                print("最大的字符串是\(ch)")
                success(ch)
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
