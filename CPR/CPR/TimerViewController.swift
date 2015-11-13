//
//  TimerViewController.swift
//  CPR
//
//  Created by Kay Lab on 11/8/15.
//  Copyright © 2015 Kay Lab. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    let progressIndicatorView = CircularLoaderView(frame: CGRectZero)
    var timer = NSTimer()
    var count = 0
    var maxCount = 60
    
    @IBOutlet var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        timerLabel.text = String(count)
        
        timer = NSTimer(timeInterval: 1.0, target: self, selector: "countUp", userInfo: nil, repeats: true)
        NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func countUp() {
        count++
        timerLabel.text = String(count)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    class CustomImageView {
        
    }
}