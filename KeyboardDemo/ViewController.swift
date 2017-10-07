//
//  ViewController.swift
//  KeyboardDemo
//
//  Created by Mostafa on 7/16/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var sayHello: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.sayHello.text = "hello, " + self.name.text!
        self.name.resignFirstResponder()
        return false
    }
    @IBAction func btn_Clicked(sender: UIButton) {
        self.sayHello.text = "hello, " + self.name.text!
        self.name.resignFirstResponder()
    }

    @IBAction func CurTime_btnClicked(sender: UIButton) {
        let now = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "HH:MM:SS a"
        self.timeLabel.text = "Time: " + formatter.stringFromDate(now)
    }
}

