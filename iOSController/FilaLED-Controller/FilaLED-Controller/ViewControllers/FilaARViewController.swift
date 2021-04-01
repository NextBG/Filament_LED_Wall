//
//  FilaARViewController.swift
//  FilaLED-Controller
//
//  Created by Wangyiwei on 2021/3/31.
//

import ARKit
import Vision

class FilaARViewController: UIViewController {
    let session = ARSession()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        session.delegate = self
        //
    }
}

extension FilaARViewController: ARSessionDelegate {
}
