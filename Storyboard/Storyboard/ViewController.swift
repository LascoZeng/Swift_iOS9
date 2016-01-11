//
//  ViewController.swift
//  Storyboard
//
//  Created by 曾志纲 on 12/17/15.
//  Copyright © 2015 曾志纲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scene1Label: UILabel!
    
    @IBAction func returned(segue: UIStoryboardSegue) {
        scene1Label.text = "Returned from Scene 2"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destination = segue.destinationViewController as! Scene2ViewController
        destination.labelText = "Arrived from Scene 1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

