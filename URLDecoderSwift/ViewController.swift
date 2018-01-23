//
//  ViewController.swift
//  URLDecoderSwift
//
//  Created by 绫仓优希 on 2018/1/23.
//  Copyright © 2018年 YukiAyakura. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let alert = NSAlert()
        alert.messageText = NSLocalizedString("Welcome", comment: "Welcome")
        alert.alertStyle = NSAlert.Style.informational
        alert.runModal()
        // Do any additional setup after loading the view.
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
}
