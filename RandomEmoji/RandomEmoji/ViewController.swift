//
//  ViewController.swift
//  RandomEmoji
//
//  Created by Gopal Shah on 7/15/16.
//  Copyright © 2016 Kabir Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emojiLabel: UILabel!
    
    var emojis: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0x1F601...0x1F64F {
            let c = String(UnicodeScalar(i))
            emojis.append(c)
        }
        
        emojiLabel.text = emojis[Int(arc4random_uniform(UInt32(emojis.count)))]
        
    }

    @IBAction func screenTapped(sender: UITapGestureRecognizer) {
        if sender.state == .Ended {
            emojiLabel.text = emojis[Int(arc4random_uniform(UInt32(emojis.count)))]
            self.view.backgroundColor = randomColor()
        }
    }
    
    func randomColor() -> UIColor{
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }


}

