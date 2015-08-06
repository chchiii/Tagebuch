//
//  EintragViewController.swift
//  Tagebuch
//
//  Created by Tim Gymnich on 06.08.15.
//  Copyright © 2015 Christopher Lindhof. All rights reserved.
//

import UIKit

class EintragViewController: UIViewController {

    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    var titel: String = "jjhggee"
    var name: String = "lllh"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            label1.text = titel
            label2.text = name
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
