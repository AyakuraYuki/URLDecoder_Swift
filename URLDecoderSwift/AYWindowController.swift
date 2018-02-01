//
//  AYWindowController.swift
//  URLDecoderSwift
//
//  Created by 绫仓优希 on 2018/2/1.
//  Copyright © 2018年 YukiAyakura. All rights reserved.
//

import Cocoa

class AYWindowController: NSWindowController {
    
    override func windowDidLoad() {
        super.windowDidLoad()
        window?.title = NSLocalizedString("WindowTitle", comment: "Title of window")
    }
    
}
