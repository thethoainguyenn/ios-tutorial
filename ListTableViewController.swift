//
//  ListTableViewController.swift
//  Demo
//
//  Created by THOAILUN on 28/03/2018.
//  Copyright © 2018 THOAILUN. All rights reserved.
//

import UIKit

class ListTableViewController: UIViewController {
    @IBOutlet weak var viewContainer: UIView!
    var listViewController: UIView!
    var gridViewController: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listViewController = ListUsersViewController().view
        gridViewController = GridUsersViewController().view
        viewContainer.addSubview(listViewController)
        viewContainer.addSubview(gridViewController)
    }
    // event click segment
    @IBAction func switchViewAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            viewContainer.bringSubview(toFront: listViewController)
            break
        case 1:
            viewContainer.bringSubview(toFront: gridViewController)
            break
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
