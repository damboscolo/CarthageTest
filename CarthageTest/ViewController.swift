//
//  ViewController.swift
//  CarthageTest
//
//  Created by Daniele Boscolo on 11/05/17.
//  Copyright © 2017 Daniele Boscolo. All rights reserved.
//

import UIKit
import SwiftToast

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toastButtonTouchUpInside(_ sender: Any) {
        let config = SwiftToastConfig(text: "Damo", image: nil, backgroundColor: UIColor.green, textColor: UIColor.white, font: nil, duration: 3.0, statusBarStyle: nil, delegate: nil)
        SwiftToast.shared.present(config)
    }

}

