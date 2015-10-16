//
//  SecondViewController.swift
//  AnimalSounds
//
//  Created by Jorge Villa on 10/7/15.
//  Copyright © 2015 kineticSDK. All rights reserved.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {

    var backMusic: AVAudioPlayer!
    
    @IBOutlet weak var lionButton: UIButton!
    @IBOutlet weak var elephantButton: UIButton!
    @IBOutlet weak var zebraButton: UIButton!
    @IBOutlet weak var monkeyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        context.nextFocusedView!.layer.shadowOffset = CGSizeMake(0, -20)
        context.nextFocusedView!.layer.shadowOpacity = 0.9;
        context.nextFocusedView!.layer.shadowRadius = 15;
        context.previouslyFocusedView!.layer.shadowOpacity = 0;
        
        if (context.nextFocusedView == lionButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.yellowColor().CGColor;
        } else if (context.nextFocusedView == elephantButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.grayColor().CGColor;
        } else if (context.nextFocusedView == zebraButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.blackColor().CGColor;
        } else if (context.nextFocusedView == monkeyButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.brownColor().CGColor;
        } else {
            context.nextFocusedView!.layer.shadowColor = UIColor.whiteColor().CGColor;
        }
    }
    
    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer  {
        let path = NSBundle.mainBundle().pathForResource(file as String, ofType: type as String)
        let url = NSURL.fileURLWithPath(path!)
        var audioPlayer:AVAudioPlayer?
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: url)
        } catch {
            print("NO AUDIO PLAYER")
        }
        
        return audioPlayer!
    }

    @IBAction func didTapLion(sender: AnyObject) {
        print("LION")
        
        backMusic = setupAudioPlayerWithFile("LIONS", type: "WAV")
        backMusic.play()
    }
    
    @IBAction func didTapElephant(sender: AnyObject) {
        print("ELEPHANT")
        
        backMusic = setupAudioPlayerWithFile("ELEPHANT", type: "wav")
        backMusic.play()
    }
    
    @IBAction func didTapZebra(sender: AnyObject) {
        print("ZEBRA")
        
        backMusic = setupAudioPlayerWithFile("ZEBRA", type: "wav")
        backMusic.play()
    }
    
    @IBAction func didTapMonkey(sender: AnyObject) {
        print("MONKEY")
        
        backMusic = setupAudioPlayerWithFile("MONKEY", type: "wav")
        backMusic.play()
    }
    

}

