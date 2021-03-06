//
//  ViewController.swift
//  URLDecoderSwift
//
//  Created by 绫仓优希 on 2018/1/23.
//  Copyright © 2018年 YukiAyakura. All rights reserved.
//

import Cocoa

class AYViewController: NSViewController {
    
    var welcomeFlag: Bool = true
    
    /// 原文输入框
    @IBOutlet weak var plainText: NSTextFieldCell!
    /// 编码内容输入框
    @IBOutlet weak var cipherText: NSTextFieldCell!
    /// 编码按钮
    @IBOutlet weak var encodeButton: NSButton!
    /// 解码按钮
    @IBOutlet weak var decodeButton: NSButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        plainText.placeholderString = NSLocalizedString("plainTextHint", comment: "Placeholder of plain text field cell")
        
        cipherText.placeholderString = NSLocalizedString("cipherTextHint", comment: "Placeholder of cipher text field cell")
        
        encodeButton.title = NSLocalizedString("encodeButtonTitle", comment: "Title of encode button")
        decodeButton.title = NSLocalizedString("decodeButtonTitle", comment: "Title of decode button")
    }
    
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
    
    
    /// 编码
    @IBAction func encodeButtonClick(_ sender: Any) {
        let original = plainText.stringValue
        let encoded = original.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        cipherText.stringValue = encoded ?? ""
    }
    
    /// 解码
    @IBAction func decodeButtonClick(_ sender: Any) {
        let original = cipherText.stringValue
        let decoded = original.removingPercentEncoding
        plainText.stringValue = decoded ?? ""
    }
    
    
}
