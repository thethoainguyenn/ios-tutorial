//
//  ViewController.swift
//  Demo
//
//  Created by THOAILUN on 27/03/2018.
//  Copyright © 2018 THOAILUN. All rights reserved.
//

// TABLE VIEW
import UIKit

class ViewController: UIViewController,
    UITableViewDataSource, UITableViewDelegate{
    let VIEW_CONTROL: String = "View Control/ Stored Data"
    let CLIP_BOARD: String = "Clipboard"
    let REQUEST: String = "Request"
    @IBOutlet weak var tblViewMenu: UITableView!
    var arrMenu = ["View Control/ Stored Data", "Clipboard", "Request"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblViewMenu.dataSource = self
        tblViewMenu.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // Func of Table View something
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "title";
//    }
    // Event select row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(indexPath)
        let goToDemoList: ListTableViewController = storyboard?.instantiateViewController(withIdentifier: "listTableViewController") as! ListTableViewController
        self.navigationController?.pushViewController(goToDemoList, animated: true)
    }
    // Call 2 funtion of UITable...
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrMenu.count
    }
    // dequeueReusableCell tao ra hang doi, co the giai phong
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        // Goi dinh danh cho cell table view
        cell?.textLabel?.text = arrMenu[indexPath.row]
        return cell!
    }
    // end
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

