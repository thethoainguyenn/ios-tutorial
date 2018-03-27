//
//  DemoListViewController.swift
//  Demo
//
//  Created by THOAILUN on 27/03/2018.
//  Copyright © 2018 THOAILUN. All rights reserved.
//

import UIKit

class DemoListViewController: UIViewController {

    @IBOutlet weak var sldHealth: UISlider!
    // sldHealth.value
    
    // Date picker
    
    @IBOutlet weak var date_value: UIDatePicker!
    @IBAction func datePickerTouch(_ sender: Any) {
        // format date ddmmyy
     //   let formatter:NSDateFormatter = NSDateFormatter()
//        formatter.dateStyle = .ShortStyle
        //formatter.stringFromDate(date_value.date)
        print(date_value.date)
    }
    
    // End date picker
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
