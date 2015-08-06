//
//  NeuerEintragViewController.swift
//  Tagebuch
//
//  Created by Tim Gymnich on 06.08.15.
//  Copyright © 2015 Christopher Lindhof. All rights reserved.
//

import UIKit

class NeuerEintragViewController: UIViewController {

    var titel: String = "" {
        didSet {
            //set label
        }
    }
    var name: String = "" {
        didSet {
            //set label
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
