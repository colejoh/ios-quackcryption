//
//  ViewController.swift
//  quackcryption
//
//  Created by Cole Johnson on 4/12/16.
//  Copyright © 2016 Cole Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var mainText: UITextView!
    
    var notQuack = true;
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
       
    @IBAction func mainButtonClicked(sender: UIButton) {
        let textFromView: String = mainText.text
        var ret:String
        if(notQuack) {
            mainButton.setTitle("Quackcrypted", forState: .Normal)
            ret = quackcrypt(textFromView)
            notQuack = false
            
        } else {
            mainButton.setTitle("Not Quackcrypted", forState: .Normal)
            ret = quackReader(textFromView)
            notQuack = true
        }
        
        mainText.text = ret
        
        print("tapped")
    }
    

}

