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
    
    @IBOutlet var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
                timer = NSTimer.scheduledTimerWithTimeInterval(30.0, target: self, selector: "startNextView", userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startNextView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("PulseViewController")
        self.presentViewController(vc, animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}