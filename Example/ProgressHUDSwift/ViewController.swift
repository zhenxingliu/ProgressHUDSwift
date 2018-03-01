//
//  ViewController.swift
//  ProgressHUDSwift
//
//  Created by 5210167@qq.com on 02/28/2018.
//  Copyright (c) 2018 5210167@qq.com. All rights reserved.
//

import UIKit
import ProgressHUDSwift


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var items:NSMutableArray = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        items.add("Dismiss HUD")
        items.add("Progress: no text")
        items.add("Progress: short text")
        items.add("Progress: longer text")
        items.add("Success: no text")
        items.add("Success: short text")
        items.add("Error: no text")
        items.add("Error: short text")
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return 2
        }
        if (section == 1) {
            return items.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            if indexPath.row == 0 {
                return tableView.dequeueReusableCell(withIdentifier: "cellText")!
            }
            if indexPath.row ==  1 {
                return self.createCell(tableView, "Dismiss Keyboard")
            }
        }
        
        if indexPath.section == 1 {
            return self.createCell(tableView, items[indexPath.row] as! String)
        }
        return UITableViewCell()
    }
    
    private func createCell(_ tableView:UITableView,_ text:String) -> UITableViewCell{
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = text
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
            if indexPath.row == 1 {
                self.view.endEditing(true)
            }
        }
        
        if indexPath.section == 1 {
            switch indexPath.row {
            case 0:
                ProgressSHD.dismiss()
                break
            case 1:
                ProgressSHD.show(nil)
                break
            case 2:
                ProgressSHD.show("Please wait...")
                break
            case 3:
                ProgressSHD.show("Please wait. We need some more time to work out this situation.")
                break
            case 4:
                ProgressSHD.showSuccess(nil)
                break
            case 5:
                ProgressSHD.showSuccess("That was great!")
                break
            case 6:
                ProgressSHD.showError(nil)
                break
            case 7:
                ProgressSHD.showError("Something went wrong.")
                break
            default:
                break
            }
        }
    }

}

