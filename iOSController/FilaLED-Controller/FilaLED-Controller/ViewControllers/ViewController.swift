//
//  ViewController.swift
//  FilaLED-Controller
//
//  Created by Wangyiwei on 2021/3/4.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func td(_ sender: UIButton) {
        print(sender.tag, "Touch Down")
    }
    @IBAction func tdr(_ sender: UIButton) {
        print(sender.tag, "Touch Down repeat")
    }
    @IBAction func tde(_ sender: UIButton) {
        print(sender.tag, "Touch enter")
    }
    @IBAction func tdex(_ sender: UIButton) {
        print(sender.tag, "Touch exit")
    }
    @IBAction func tdin(_ sender: UIButton) {
        print(sender.tag, "Touch in")
    }
    @IBAction func tdout(_ sender: UIButton) {
        print(sender.tag, "Touch out")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

