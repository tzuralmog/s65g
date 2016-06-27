//
//  ViewController.swift
//  lecture3
//
//  Created by tzur almog on 6/27/16.
//  Copyright © 2016 tzur almog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBAction func buttonclicked(sender: AnyObject) {
        print ("we were clicked")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

