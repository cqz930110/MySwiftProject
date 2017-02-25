//
//  ViewController.swift
//  FDMSwift
//
//  Created by cqz on 17/2/11.
//  Copyright © 2017年 cqz. All rights reserved.
//

import UIKit

typealias FDMBlock = Void
typealias FDMBlockBlock = (_ block : FDMBlock) -> Void
typealias FDMObjectBlock = (_ obj : Any) -> Void
typealias FDMArrayBlock = (_ arrays : Array<Any>) -> Void


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


class TestClass {

    var a : Int = 0
    var b : Int = 0
    
    var weight : Int {
        
        return a + b
    }
    
    var weight1 : Int {
        
        get {
            return a + b
        }
        
        set {
            
            b = newValue - a
        }
    }
    
    var weight2 : Int {
        
        get {
            return a + b
        }
        
        set (value1) {
            
            b = value1 - a
        }
    }
    
    
    
}
