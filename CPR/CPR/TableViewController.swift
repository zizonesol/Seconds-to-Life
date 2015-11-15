//
//  TableViewController.swift
//  CPR
//
//  Created by Kay Lab on 11/14/15.
//  Copyright © 2015 Kay Lab. All rights reserved.
//

import UIKit
import CoreLocation
import Foundation

class TableViewController: UITableViewController {

    @IBOutlet var myTableView: UITableView!
    @IBOutlet var pushOutlet: UISwitch!
    @IBOutlet var locationOutlet: UISwitch!
    @IBOutlet var experienceOutlet: UISwitch!
    @IBOutlet var certifiedOutlet: UISwitch!
    @IBOutlet var vibrationOutlet: UISwitch!
    @IBOutlet var voiceOutlet: UISwitch!
    
    let userDefaults = NSUserDefaults.standardUserDefaults()
    let manager = CLLocationManager()
    
    @IBAction func pushNotificationChanged(sender: AnyObject) {
        userDefaults.setBool(!pushOutlet.on, forKey: "push")
        userDefaults.synchronize()
    }
    
    @IBAction func locationAuthorizedChanged(sender: AnyObject) {
        if locationOutlet.on {
            if CLLocationManager.authorizationStatus() == .NotDetermined {
                manager.requestWhenInUseAuthorization()
                
            }
            else {
                let alertController = UIAlertController(
                    title: "Background Location Access Disabled",
                    message: "In order to be reached if there is a cpr emergency near you, please open this app's settings and set location access to 'Always'.",
                    preferredStyle: .Alert)
                
                let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
                alertController.addAction(cancelAction)
                
                let openAction = UIAlertAction(title: "Open Settings", style: .Default) { (action) in
                    if let url = NSURL(string:UIApplicationOpenSettingsURLString) {
                        UIApplication.sharedApplication().openURL(url)
                    }
                }
                alertController.addAction(openAction)
                
                self.presentViewController(alertController, animated: true, completion: nil)
            }
        }
        else {
            let alertController = UIAlertController(
                title: "Background Location Access Enabled",
                message: "In order to be disable location access, please open this app's settings and set location access to 'Always'.",
                preferredStyle: .Alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
            alertController.addAction(cancelAction)
            
            let openAction = UIAlertAction(title: "Open Settings", style: .Default) { (action) in
                if let url = NSURL(string:UIApplicationOpenSettingsURLString) {
                    UIApplication.sharedApplication().openURL(url)
                }
            }
            alertController.addAction(openAction)
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        userDefaults.setBool(!locationOutlet.on, forKey: "location")
        userDefaults.synchronize()
    }
    
    @IBAction func experienceChanged(sender: AnyObject) {
        userDefaults.setBool(!experienceOutlet.on, forKey: "experience")
        userDefaults.synchronize()
    }
    
    @IBAction func certifiedChanged(sender: AnyObject) {
        userDefaults.setBool(!certifiedOutlet.on, forKey: "certified")
        userDefaults.synchronize()
    }
    
    @IBAction func vibrationChanged(sender: AnyObject) {
        userDefaults.setBool(!vibrationOutlet.on, forKey: "vibration")
        userDefaults.synchronize()
    }
    
    @IBAction func voiceChanged(sender: AnyObject) {
        userDefaults.setBool(!voiceOutlet.on, forKey: "voice")
        userDefaults.synchronize()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pushOutlet.on = userDefaults.boolForKey("push")
        locationOutlet.on = userDefaults.boolForKey("location")
        experienceOutlet.on = userDefaults.boolForKey("experience")
        certifiedOutlet.on = userDefaults.boolForKey("certified")
        vibrationOutlet.on = userDefaults.boolForKey("vibration")
        voiceOutlet.on = userDefaults.boolForKey("voice")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
