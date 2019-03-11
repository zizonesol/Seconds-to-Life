//
//  AppDelegate.swift
//  CPR
//
//  Created by Kay Lab on 11/6/15.
//  Copyright © 2015 Kay Lab. All rights reserved.
//s

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        if(userDefaults.boolForKey("HasLaunchedOnce"))
        {
            // app already launched
            self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let initialViewController = storyboard.instantiateViewControllerWithIdentifier("EmergencyView")
            
            self.window?.rootViewController = initialViewController
            self.window?.makeKeyAndVisible()
            
            return true
        }
        else
        {
            // This is the first launch ever
            self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let initialViewController = storyboard.instantiateViewControllerWithIdentifier("WelcomeView")
            
            self.window?.rootViewController = initialViewController
            self.window?.makeKeyAndVisible()
            
            userDefaults.setBool(false, forKey: "push")
            userDefaults.setBool(false, forKey: "location")
            userDefaults.setBool(false, forKey: "experience")
            userDefaults.setBool(false, forKey: "certified")
            userDefaults.setBool(false, forKey: "vibration")
            userDefaults.setBool(false, forKey: "voice")
            userDefaults.setBool(true, forKey: "HasLaunchedOnce")
            userDefaults.synchronize()
            
            return true
        }
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

