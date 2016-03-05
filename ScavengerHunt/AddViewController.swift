//
//  AddViewController.swift
//  ScavengerHunt
//
//  Created by Apple on 3/5/16.
//  Copyright © 2016 Apple. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {
    var myItem = ScavengerHuntItem?()
    @IBOutlet weak var myTextField: UITextField!
    
    @IBAction func cancel(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DoneItem"{
            if let name = myTextField.text {
                if !name.isEmpty {
                    myItem = ScavengerHuntItem(name: name)
                }
            }
        }
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

