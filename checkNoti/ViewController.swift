//
//  ViewController.swift
//  checkNoti
//
//  Created by 李小明 on 2016/11/12.
//  Copyright © 2016年 李小明. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showNumbers: UILabel!
    var number = 0
    
    func enterBackground(noti:Notification) {
        number -= 1
        showNumbers.text = "\(number)"
    }
    func enterForeground(noti:Notification) {
        number += 2
        showNumbers.text = "\(number)"
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NotificationCenter.default.addObserver(self, selector:
            #selector(ViewController.enterBackground(noti:)), name:
            Notification.Name.UIApplicationDidEnterBackground, object: nil)
        NotificationCenter.default.addObserver(self, selector:
            #selector(ViewController.enterForeground(noti:)), name:
            Notification.Name.UIApplicationWillEnterForeground, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

