//
//  ButtonViewController.swift
//  EDemo
//
//  Created by macOSX on 4/8/17.
//  Copyright © 2017 macOSX. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buttoPressed(_ sender: UIButton) {
       //Create the alert
        let btnAlert = UIAlertController(title: "Show Me Alert", message: "Would you like to continue learning how to use iOS Button alerts?", preferredStyle: UIAlertControllerStyle.alert)
        // do something like...
        let alert = UIAlertController(title: "", message: "Okay I got it", preferredStyle: UIAlertControllerStyle.alert)
        // Add the action
        btnAlert.addAction(UIAlertAction(title: "Continue", style: .default, handler:{ action in
            alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            
        }))
        btnAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(btnAlert, animated: true, completion: nil)
    }

}
