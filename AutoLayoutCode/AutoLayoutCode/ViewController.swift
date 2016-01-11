//
//  ViewController.swift
//  AutoLayoutCode
//
//  Created by 曾志纲 on 12/14/15.
//  Copyright © 2015 曾志纲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let superview = self.view
        let myLabel = UILabel()
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.text = "My Label"
        
        let myButton = UIButton()
        myButton.setTitle("My Button", forState: UIControlState.Normal)
        myButton.backgroundColor = UIColor.blueColor()
        myButton.translatesAutoresizingMaskIntoConstraints = false
        
        superview.addSubview(myLabel)
        superview.addSubview(myButton)
        
        var myConstraint = NSLayoutConstraint(item: myLabel, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: superview, attribute: NSLayoutAttribute.CenterY, multiplier: 1.0, constant: 0)
        superview.addConstraint(myConstraint)
        
        myConstraint = NSLayoutConstraint(item: myLabel, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: superview, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0)
        superview.addConstraint(myConstraint)
        
        myConstraint = NSLayoutConstraint(item: myButton, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: myLabel, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: -10)
        superview.addConstraint(myConstraint)
        
        myConstraint = NSLayoutConstraint(item: myButton, attribute: NSLayoutAttribute.Baseline, relatedBy: NSLayoutRelation.Equal, toItem: myLabel, attribute: NSLayoutAttribute.Baseline, multiplier: 1.0, constant: 0)
        superview.addConstraint(myConstraint)
        
        //self.view.removeConstraint(myConstraint)
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

