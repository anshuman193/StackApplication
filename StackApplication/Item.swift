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
    
    @IBOutlet var scripName: NSTextField?
    @IBOutlet var scripPrice: NSTextField?
    
    let selectedBorderThickness: CGFloat = 3
    
    override var isSelected: Bool {
        
        didSet {
            
            if isSelected {
                
                view.layer?.borderWidth = selectedBorderThickness
            } else {
                
                view.layer?.borderWidth = 0
            }
            
        }
    }
    
    override var highlightState: NSCollectionViewItem.HighlightState {
        
        didSet {
            
            if highlightState == .forSelection {
                
                view.layer?.borderWidth = selectedBorderThickness
                
            } else {
                
                view.layer?.borderWidth = 0
            }
            
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        view.wantsLayer = true
//        view.layer?.backgroundColor = CGColor.init(red: 0.5, green: 0.1, blue: 0.1, alpha: 0.9)
        view.layer?.borderColor = NSColor.blue.cgColor
    }
}
