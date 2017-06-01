//
//  ViewController.swift
//  CarthageTest
//
//  Created by Daniele Boscolo on 11/05/17.
//  Copyright © 2017 Daniele Boscolo. All rights reserved.
//

import UIKit
import SwiftToast
import TKInsertCodeView

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func toastButtonTouchUpInside(_ sender: Any) {
        let toast = SwiftToast(text: "Swift toast worked!")
        present(toast, animated: true)
    }
}

