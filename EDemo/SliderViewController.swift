//
//  SliderViewController.swift
//  EDemo
//
//  Created by macOSX on 4/8/17.
//  Copyright © 2017 macOSX. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {
    @IBOutlet weak var lblSlider: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sliderPressed(_ sender: UISlider) {
        var currrentValue = Int(sender.value)
        lblSlider.text = "\(currrentValue)"
    }

  

}
