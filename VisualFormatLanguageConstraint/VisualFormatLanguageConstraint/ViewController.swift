//
//  ViewController.swift
//  VisualFormatLanguageConstraint
//
//  Created by 曾志纲 on 12/14/15.
//  Copyright © 2015 曾志纲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let superview = self.view
        
        let myLabel = UILabel()
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.text = "My Label"
        
        let myButton = UIButton()
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.backgroundColor = UIColor.redColor()
        myButton.setTitle("My Button", forState: UIControlState.Normal)
        //myButton.backgroundRectForBounds(CGRect(x: 30, y: 100, width: 40, height: 10))
        
        superview.addSubview(myLabel)
        superview.addSubview(myButton)
        
        // Create the views dictionary
        let viewsDictionary = ["myLabel": myLabel, "myButton": myButton]
        
        // Create and add the vertical constraints
        superview.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-[myButton]-|", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: nil, views: viewsDictionary))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

