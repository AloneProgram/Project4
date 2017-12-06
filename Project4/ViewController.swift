//
//  ViewController.swift
//  Project4
//
//  Created by iKnet on 16/7/7.
//  Copyright © 2016年 zzj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().statusBarHidden = true

        self.initView()
        
    }
    
    func initView() {
        
        let leftView:LeftView = LeftView(nibName: "LeftView" ,bundle:nil)
        let cameraView:CameraView = CameraView(nibName: "CameraView" ,bundle: nil)
        
        self.addChildViewController(leftView)
        self.scrollView.addSubview(leftView.view)
        leftView.didMoveToParentViewController(self)
        
        self.addChildViewController(cameraView)
        self.scrollView.addSubview(cameraView.view)
        cameraView.didMoveToParentViewController(self)
        
        var cameraViewFrame:CGRect = cameraView.view.frame
        cameraViewFrame.origin.x = self.view.frame.width
        cameraView.view.frame = cameraViewFrame
        
        self.scrollView.frame = self.view.frame
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width * 2 , self.view.frame.height)
        self.scrollView.pagingEnabled = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

