//
//  ViewController.swift
//  MyColorMix
//
//  Created by Jason Crawford on 9/28/16.
//  Copyright © 2016 Jason Crawford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBAction func redSwitch(_ sender: UISwitch) {
        if sender.isOn {
            colorView.backgroundColor = .red
        } else {
            colorView.backgroundColor = .black
        }
        
    }
    @IBAction func greenSwitch(_ sender: UISwitch) {
        if sender.isOn {
            colorView.backgroundColor = .green
        } else {
            colorView.backgroundColor = .black
        }
    }
    @IBAction func blueSwitch(_ sender: UISwitch) {
        if sender.isOn {
            colorView.backgroundColor = .blue
        } else {
            colorView.backgroundColor = .black
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        colorView.backgroundColor = .black
    }
// It doesn't work b/c redSwitch is not a Bool
//    func updateColor() {
//        var red: CGFloat = 0
//        var green: CGFloat = 0
//        var blue: CGFloat = 0
//        
//        if redSwitch(UISwitch) {
//            red = 1
//        }
//        if greenSwitch.isOn {
//            green = 1
//        }
//        if blueSwitch.isOn {
//            blue = 1
//        }
//        
//        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
//    }
    
   


}

