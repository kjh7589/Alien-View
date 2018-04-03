//
//  ViewController.swift
//  Alien View
//
//  Created by D7703_30 on 2018. 4. 3..
//  Copyright © 2018년 김재현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1;
    var direction = true;
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var lab: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Image.image = UIImage(named: "frame1.png")
        lab.text = "1"
    }
    @IBAction func But(_ sender: Any) {
        if count == 5 {
            direction = false
        } else if count == 1 {
            direction = true
        }
        
        if direction == true {
            count += 1;
        } else if direction == false {
            count = count - 1
        }
        
        
        Image.image = UIImage(named: "frame\(count).png")
        lab.text = String(count)
        
    }
}


