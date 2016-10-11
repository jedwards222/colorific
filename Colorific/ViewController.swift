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
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        if sender.isEqual(randomColor) {
            // Generate Random Numbers
            r = CGFloat(arc4random() % 255)
            g = CGFloat(arc4random() % 255)
            b = CGFloat(arc4random() % 255)
        } else if sender.isEqual(whiteButton) {
            r = 255
            g = 255
            b = 255
        }
        
        // Create Color
        let color = UIColor(red: (r/255.0), green: (g/255.0), blue: (b/255.0), alpha: 1.0)
        
        // Correct text colors
        changeText(r, g: g, b: b)
        
        // Update View
        view.backgroundColor = color
    }
    
    func changeText(r: CGFloat, g: CGFloat, b: CGFloat) {
        if r + g + b < 300 {
            randomColor.setTitleColor(.whiteColor(), forState: .Normal)
            whiteButton.setTitleColor(.whiteColor(), forState: .Normal)
            blackButton.setTitleColor(.whiteColor(), forState: .Normal)
        } else {
            randomColor.setTitleColor(.blackColor(), forState: .Normal)
            whiteButton.setTitleColor(.blackColor(), forState: .Normal)
            blackButton.setTitleColor(.blackColor(), forState: .Normal)

        }
    }
}

