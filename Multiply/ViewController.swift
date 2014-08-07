//
//  ViewController.swift
//  Multiply
//
//  Created by Johnny Appleseed on 8/6/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onButtonTapped(sender: UIButton)
    {
        var firstInt = textField1.text.toInt()
        var secondInt = textField2.text.toInt()

        if firstInt && secondInt
        {
            var product = firstInt! * secondInt!

            resultsLabel.text = "\(product)"

            if product % 2 == 0
            {
//                view.backgroundColor = UIColor.greenColor()
                myImageView.image = UIImage(named: "greenImage")
                
            }
            else
            {
                myImageView.image = UIImage(named: "orangeImage")
            }
        }
        else
        {
            resultsLabel.text = "Cannot calculate"
            view.backgroundColor = UIColor.whiteColor()
        }
        animateLabel()
    }

    func animateLabel()
    {
        resultsLabel.alpha = 0
        UIView.animateWithDuration(2, animations: {
                self.resultsLabel.alpha = 1
            })
    }
}

