//
//  ViewController.swift
//  Ike's Love and Sandwiches
//
//  Created by Christopher Raleigh on 2016-09-03.
//  Copyright © 2016 Ike's Place. All rights reserved.
//

import UIKit

class ViewController: SandwichCustomizerView {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sandwich = SandwichesMenu.meatSandwiches[2]
        let customizer = SandwichCustomizer(baseSandwich: sandwich)
        setCustomizer(customizer: customizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

