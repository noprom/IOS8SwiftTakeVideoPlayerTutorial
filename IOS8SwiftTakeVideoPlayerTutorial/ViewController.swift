//
//  ViewController.swift
//  IOS8SwiftTakeVideoPlayerTutorial
//
//  Created by noprom on 15/7/20.
//  Copyright (c) 2015年 noprom. All rights reserved.
//

import UIKit
import MobileCoreServices
import AssetsLibrary

class ViewController: UIViewController ,UINavigationControllerDelegate, UIImagePickerControllerDelegate{

    /**
    摄像
    
    :param: sender <#sender description#>
    */
    @IBAction func takeVideo(sender: AnyObject) {
        // 1.Check if project runs on a device with camera available
        if UIImagePickerController.isSourceTypeAvailable(.Camera) {
        
            // 2.Present UIImagePickerController to take video
            let controller = UIImagePickerController()
            controller.sourceType = .Camera
            controller.mediaTypes = [kUTTypeMovie as! String]
            controller.delegate = self
            controller.videoMaximumDuration = 10.0
            
            presentViewController(controller, animated: true, completion: nil)
        }else{
            println("Camera is not available")
        }
    }
    
    @IBAction func viewLibrary(sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

