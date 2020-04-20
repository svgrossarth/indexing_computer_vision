//
//  ViewController.swift
//  ios_index_computer_vision
//
//  Created by Spencer Grossarth on 4/19/20.
//  Copyright © 2020 Spencer Grossarth. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()



        // Do any additional setup after loading the view.
    }
    override func viewDidAppear() {
        if let window = self.view.window {
            print("there is a window")
            window.isOpaque = false
            window.backgroundColor = .clear
        } else {
            print("there is no window")
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

