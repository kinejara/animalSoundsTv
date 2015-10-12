//
//  FirstViewController.swift
//  AnimalSounds
//
//  Created by Jorge Villa on 10/7/15.
//  Copyright © 2015 kineticSDK. All rights reserved.
//

import UIKit
import AVFoundation

class FirstViewController: UIViewController {

    var backMusic: AVAudioPlayer!
    
    @IBOutlet weak var dogButton: UIButton!
    @IBOutlet weak var catButton: UIButton!
    @IBOutlet weak var cowButton: UIButton!
    @IBOutlet weak var donkeyButton: UIButton!
    @IBOutlet weak var pigButton: UIButton!
    @IBOutlet weak var duckButton: UIButton!
    @IBOutlet weak var chikenButton: UIButton!
    @IBOutlet weak var littleChicken: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dogButton.backgroundColor = UIColor.clearColor()
        //dogButton.imageView!.adjustsImageWhenAncestorFocused = true;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        context.nextFocusedView!.layer.shadowOffset = CGSizeMake(0, -20)
        context.nextFocusedView!.layer.shadowOpacity = 0.9;
        context.nextFocusedView!.layer.shadowRadius = 15;
        context.previouslyFocusedView!.layer.shadowOpacity = 0;
        
        if (context.nextFocusedView == dogButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.brownColor().CGColor;
        } else if (context.nextFocusedView == catButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.whiteColor().CGColor;
        } else if (context.nextFocusedView == cowButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.blackColor().CGColor;
        } else if (context.nextFocusedView == donkeyButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.grayColor().CGColor;
        } else if (context.nextFocusedView == pigButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.purpleColor().CGColor;
        } else if (context.nextFocusedView == duckButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.greenColor().CGColor;
        } else if (context.nextFocusedView == chikenButton) {
            context.nextFocusedView!.layer.shadowColor = UIColor.redColor().CGColor;
        } else if (context.nextFocusedView == littleChicken) {
            context.nextFocusedView!.layer.shadowColor = UIColor.yellowColor().CGColor;
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
    
    @IBAction func didTapDog(sender: AnyObject) {
        print("DOG")
        
        backMusic = setupAudioPlayerWithFile("DOG", type: "wav")
        backMusic.play()
    }
    
    @IBAction func didTapCat(sender: AnyObject) {
        print("CAT")
        backMusic = setupAudioPlayerWithFile("CAT", type: "wav")
        backMusic.play()
    }
    
    @IBAction func didTapCow(sender: AnyObject) {
        print("COW")
        backMusic = setupAudioPlayerWithFile("COW", type: "wav")
        backMusic.play()
    }
    
    @IBAction func didTapDonkey(sender: AnyObject) {
        print("DONKEY")
        backMusic = setupAudioPlayerWithFile("DONKEY", type: "wav")
        backMusic.play()
    }
    
    @IBAction func didTapPig(sender: AnyObject) {
        print("PIG")
        backMusic = setupAudioPlayerWithFile("PIG", type: "wav")
        backMusic.play()
    }
    
    @IBAction func didTapDuck(sender: AnyObject) {
        print("DUCK")
        backMusic = setupAudioPlayerWithFile("DUCK", type: "mp3")
        backMusic.play()
    }
    
    @IBAction func didTapHen(sender: AnyObject) {
        print("HEN")
        backMusic = setupAudioPlayerWithFile("HEN", type: "wav")
        backMusic.play()
    }
    
    @IBAction func didTapChiken(sender: AnyObject) {
        print("CHIKEN")
        backMusic = setupAudioPlayerWithFile("CHIKEN", type: "wav")
        backMusic.play()
    }
}

