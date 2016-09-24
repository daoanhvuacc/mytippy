//
//  SettingsViewController.swift
//  mytippy
//
//  Created by VuDao on 9/24/16.
//  Copyright © 2016 VuDao. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var percent1: UITextField!
    @IBOutlet weak var percent2: UITextField!
    @IBOutlet weak var percent3: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSaveBtn(_ sender: AnyObject) {
        
        let percent1No = percent1.text
        
        let defaults = UserDefaults.standard
        defaults.set(percent1No, forKey: "percent1")
        defaults.synchronize()
    }

    @IBAction func onTapSettings(_ sender: AnyObject) {
        view.endEditing(true)
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
