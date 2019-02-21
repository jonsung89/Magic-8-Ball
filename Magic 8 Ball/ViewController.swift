//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Jon Sung on 2/21/19.
//  Copyright © 2019 Jon Sung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomIndexNumber : Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func askButtonPressed(_ sender: UIButton) {
        changeImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeImage()
    }
    
    func changeImage() {
        randomIndexNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named : ballArray[randomIndexNumber])
    }

}

