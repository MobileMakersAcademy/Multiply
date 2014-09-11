//
//  ViewController.swift
//  Multiply
//
//  Created by Johnny Appleseed on 8/6/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var textFieldOne: UITextField!
    @IBOutlet var textFieldTwo: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onButtonTapped(sender: UIButton)
    {
        var firstInt = textFieldOne.text.toInteger()
        var secondInt = textFieldTwo.text.toInteger()

        var result = firstInt * secondInt

        resultLabel.text = "\(result)"
    }

}

