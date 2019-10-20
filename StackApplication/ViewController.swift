//
//  ViewController.swift
//  StackApplication
//
//  Created by anshuman singh on 15/10/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSCollectionViewDelegate, NSCollectionViewDataSource {
    
    
    
    @IBOutlet var collectionView: NSCollectionView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        collectionView.registerForDraggedTypes([NSPasteboard.PasteboardType(kUTTypeURL as String)])
        collectionView.delegate = self
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        
        
        
        let item = self.storyboard?.instantiateController(withIdentifier: "collectionItem")
            
//            NSStoryboard.SceneIdentifier("collectionItem"))
        guard let scribItem = item as? Item else { return item as! NSCollectionViewItem }
//        scribItem.scribView.wantsLayer = true
//        scribItem.scribView.layer?.backgroundColor = NSColor.red.cgColor
        


//        let image = NSImage(contentsOf: photos[indexPath.item])
//        pictureItem.imageView?.image = image

        return scribItem
    }
}

