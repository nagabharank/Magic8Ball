//
//  ViewController.swift
//  Magic8Ball
//
//  Created by NagaBharan Kothrui on 1/29/18.
//  Copyright © 2018 Bharan Kothrui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ballImageChange()

    }

    @IBAction func askBtnPressed(_ sender: UIButton) {
        ballImageChange()
    }
    
    func ballImageChange() {
        
        randomBallNumber = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        ballImageChange()
    }
    


}

