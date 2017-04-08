//
//  ViewController.swift
//  EDemo
//
//  Created by macOSX on 4/8/17.
//  Copyright © 2017 macOSX. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var lblLable: UILabel!
    let pickerData = ["Monday","TuesDay","Wednesday",
                      "Thursday","Friday","Sarturday","Sunday"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
     //Mark: Delegates and data sources
        //MarK: Datasource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    //MarK: Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblLable.text = pickerData[row]
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

