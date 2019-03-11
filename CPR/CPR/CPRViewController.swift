//
//  CPRViewController.swift
//  CPR
//
//  Created by Kay Lab on 11/12/15.
//  Copyright © 2015 Kay Lab. All rights reserved.
//

import UIKit
import AVFoundation

class CPRViewController: UIViewController {

    var timer = NSTimer()
    var audioPlayer = AVAudioPlayer()
    var alertSound: NSURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("CountUp", ofType: "wav")!)
    var voiceEnabled = false
    var vibrationEnabled = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = NSUserDefaults.standardUserDefaults()
        voiceEnabled = userDefaults.boolForKey("voice")
        vibrationEnabled = userDefaults.boolForKey("vibration")
        
        if voiceEnabled {
            alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("CountUp", ofType: "wav")!)
        }
        else {
            alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Metronome", ofType: "mp3")!)
        }
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: alertSound)
            timer = NSTimer.scheduledTimerWithTimeInterval(0.0, target: self, selector: "playClip", userInfo: nil, repeats: true)
        }
        catch {
            
        }
        
        audioPlayer.prepareToPlay()
        audioPlayer.play()
        // Do any additional setup after loading the view.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playClip() {
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
    
    func playVibration() {
        
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
