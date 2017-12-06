//
//  LeftView.swift
//  Project4
//
//  Created by iKnet on 16/7/7.
//  Copyright © 2016年 zzj. All rights reserved.
//

import UIKit

class LeftView: UIViewController {
    
    var imageView:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView()
        imageView.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height/2)
        self.view.addSubview(imageView!)
        
        

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    


}
