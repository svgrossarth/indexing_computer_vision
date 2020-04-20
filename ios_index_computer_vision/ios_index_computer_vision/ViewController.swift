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
        let displayID = CGMainDisplayID()
        if let imageRef = CGDisplayCreateImage(displayID){
            let url = URL(string: "file:///Users/svgro/Documents/GitHub/index_computer_vision/test.jpg")!
            //let url = URL(fileURLWithPath: "file:///Users/svgro/Documents/GitHub/index_computer_vision/test.jpg")
            writeCGImage(imageRef, to: url)
            url.absoluteString
        }
        
//        let fileUrl = URL(string: "file:///Users/svgro/Documents/GitHub/index_computer_vision/test.jpg")!
//        let displayID = CGMainDisplayID()
//        let screenShot:CGImage = CGDisplayCreateImage(displayID)!
//        let bitmapRep = NSBitmapImageRep(cgImage: screenShot)
//        let jpegData = bitmapRep.representation(using: NSBitmapImageRep.FileType.jpeg, properties: [:])!
//
//
//        do {
//            try jpegData.write(to: fileUrl, options: .atomic)
//        }
//        catch {print("error: \(error)")}
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    @discardableResult func writeCGImage(_ image: CGImage, to destinationURL: URL) -> Bool {
        guard let destination = CGImageDestinationCreateWithURL(destinationURL as CFURL, kUTTypePNG, 1, nil) else { return false }
        CGImageDestinationAddImage(destination, image, nil)
        print("I think it worked")
        return CGImageDestinationFinalize(destination)
    }

}

