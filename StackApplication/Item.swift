//
//  CollectionViewItem.swift
//  StackApplication
//
//  Created by Anshuman Singh on 10/20/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import AppKit

class Item: NSCollectionViewItem {
    
//    @IBOutlet var scribView: NSView!
//    @IBOutlet var scribPrice: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.wantsLayer = true
        view.layer?.borderColor = NSColor.blue.cgColor
    }
}
