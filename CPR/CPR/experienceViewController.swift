//
//  experienceViewController.swift
//  CPR
//
//  Created by Kay Lab on 11/14/15.
//  Copyright © 2015 Kay Lab. All rights reserved.
//

import UIKit

class experienceViewController: UIViewController {

    @IBAction func yesClicked(sender: AnyObject) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setBool(false, forKey: "experience")
        userDefaults.synchronize()
    }
    @IBAction func noClicked(sender: AnyObject) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setBool(true, forKey: "experience")
        userDefaults.synchronize()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
