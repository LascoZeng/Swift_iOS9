//
//  ViewController.swift
//  CrossView
//
//  Created by 曾志纲 on 12/14/15.
//  Copyright © 2015 曾志纲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var viewB: UIView!
    @IBOutlet weak var centerConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewB.removeConstraint(centerConstraint)
        
        let constraint = NSLayoutConstraint(item: myLabel, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: myButton, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(constraint)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

