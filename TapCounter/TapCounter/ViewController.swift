//
//  ViewController.swift
//  TapCounter
//
//  Created by Gopal Shah on 7/15/16.
//  Copyright © 2016 Kabir Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var instructionLabel: UILabel!
    @IBOutlet var tapButton: UIButton!
    
    var count: Int?
    var incr: Int?
    var needed: Int?
    var incrString: String?
    var messages: [String] = []
    var formatter: NSNumberFormatter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        incr = 1
        needed = 50
        messages = ["Nice Job!", "Woah.", "Keep Clickin!", "Professional", "Sick!", "Crazy!"]
        formatter = NSNumberFormatter()
        formatter!.numberStyle = .NoStyle
    }

    @IBAction func screenTapped(sender: UITapGestureRecognizer) {
        if sender.state == .Ended {
            if count! >= needed && count! != 0 {
                incr! += 1
                incrString = String(incr!)
                needed! = needed! * 2
                instructionLabel.text = messages[Int(arc4random_uniform(UInt32(messages.count)))] + " +" + incrString!
                instructionLabel.fadeIn()
            }
            count! += incr!
            countLabel.text = formatter!.stringFromNumber(count!)
            instructionLabel.fadeOut()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

