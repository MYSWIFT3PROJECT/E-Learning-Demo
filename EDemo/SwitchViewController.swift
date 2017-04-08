//
//  SwitchViewController.swift
//  EDemo
//
//  Created by macOSX on 4/8/17.
//  Copyright © 2017 macOSX. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {
    @IBOutlet weak var lblChangeState: UILabel!
    @IBOutlet weak var switchPressed: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //switchPressed.addTarget(self, action: #selector(SwitchViewController.stateChange(_:)), for: UIControlEvents.valueChanged)
        
    }
    @IBAction func stateChange(_ sender: Any) {
        if switchPressed.isOn {
            lblChangeState.text = "The Switch is On"
            switchPressed.setOn(false, animated: true)
        }else{
            lblChangeState.text = "The Switch is Off"
            switchPressed.setOn(true, animated: true)
        }
    }
    func stateChanged(switchState:UISwitch) {
//        if switchPressed.isOn {
//            lblChangeState.text = "The Switch is On"
//        }else{
//             lblChangeState.text = "The Switch is Off"
//        }
    }

    
}
