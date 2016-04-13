//
//  ViewController.swift
//  quackcryption
//
//  Created by Cole Johnson on 4/12/16.
//  Copyright © 2016 Cole Johnson. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var mainText: UITextView!
    
    //Global Variables
    var notQuack = true;
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainButton.layer.borderWidth = 5;
        mainButton.layer.borderColor = UIColor.whiteColor().CGColor
        mainButton.layer.shadowColor = UIColor.blackColor().CGColor
        mainButton.layer.shadowOffset = CGSizeMake(5, 5)
        mainButton.layer.shadowRadius = 5
        mainButton.layer.shadowOpacity = 0.2
        
        self.mainText.delegate = self
        UIApplication.sharedApplication().statusBarStyle = .LightContent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(userText: UITextField!) -> Bool {
        mainText.resignFirstResponder()
        return true;
    }
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.Default
        
    }
       
    @IBAction func mainButtonClicked(sender: UIButton) {
        let textFromView: String = mainText.text
        var ret:String = ""
        if(notQuack) {
            if(textFromView != "") {
                mainButton.setTitle("Quackcrypted", forState: .Normal)
                ret = quackcrypt(textFromView)
                notQuack = false
            }
        } else {
            if(textFromView != "") {
                mainButton.setTitle("Not Quackcrypted", forState: .Normal)
                ret = quackReader(textFromView)
                notQuack = true
            }
        }
        let quackSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Sounds/quack", ofType: "mp3")!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: quackSound)
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch {
            print("Error getting audio file")
        }
        
        mainText.text = ret
        
        print("tapped")
    }
    

}

