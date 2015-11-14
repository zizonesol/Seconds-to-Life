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
    var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("CountUp", ofType: "wav")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: alertSound)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
