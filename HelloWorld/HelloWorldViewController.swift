//
//  HelloWorldViewController.swift
//  HelloWorld
//
//  Created by Jui Tau Tsai on 6/28/19.
//  Copyright © 2019 Jui Tau Tsai. All rights reserved.
//

import UIKit

class HelloWorldViewController: UIViewController {

    @IBOutlet weak var helloWorldLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        helloWorldLabel.text = "Hello World!"
        // Do any additional setup after loading the view.
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
