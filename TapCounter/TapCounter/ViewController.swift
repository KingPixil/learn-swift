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
    @IBOutlet var tapButton: UIButton!
    
    var count: Int?
    var formatter: NSNumberFormatter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count = 0
        formatter = NSNumberFormatter()
        formatter!.numberStyle = .NoStyle
    }

    @IBAction func tapButtonTapped(sender: UIButton) {
        count! += 1
        countLabel.text = formatter!.stringFromNumber(count!	)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

