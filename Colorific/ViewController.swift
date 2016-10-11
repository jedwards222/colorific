//
//  ViewController.swift
//  Colorific
//
//  Created by James Edwards on 10/9/16.
//  Copyright © 2016 James Edwards. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var randomColor: UIButton!
    @IBOutlet weak var whiteButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeColor(sender: UIButton) {
        // Generate Random Numbers
        let r = CGFloat(arc4random() % 255)
        let g = CGFloat(arc4random() % 255)
        let b = CGFloat(arc4random() % 255)
        
        // Create Color
        let color = UIColor(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: 1.0)
        
        // Check if color is too dark to use black text
        if r + g + b < 300 {
            randomColor.setTitleColor(.whiteColor(), forState: .Normal)
            whiteButton.setTitleColor(.whiteColor(), forState: .Normal)
            blackButton.setTitleColor(.whiteColor(), forState: .Normal)
        } else {
            randomColor.setTitleColor(.blackColor(), forState: .Normal)
            whiteButton.setTitleColor(.blackColor(), forState: .Normal)
            blackButton.setTitleColor(.blackColor(), forState: .Normal)            
        }
        
        // Update View
        view.backgroundColor = color
    }
    
    @IBAction func makeWhite(sender: UIButton) {
        // Create Color
        let color = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
        // Update View
        view.backgroundColor = color
    }
    
    @IBAction func makeBlack(sender: UIButton) {
        // Create Color
        let color = UIColor(red: 0, green: 0, blue: 0, alpha: 1.0)
        // Update View
        view.backgroundColor = color
    }
    
}

