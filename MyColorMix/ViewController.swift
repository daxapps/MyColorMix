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
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    @IBAction func switchChanged(_ sender: UISwitch) {
//        if sender.isOn {
//            colorView.backgroundColor = .red
//        } else {
//            colorView.backgroundColor = .black
//        }
        updateColor()
        updateControls()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        colorView.backgroundColor = .black
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        updateControls()
    }

    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
        
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
   
    @IBAction func reset(_ sender: AnyObject) {
        redSlider.value = 1
        redSwitch.isOn = false
        greenSlider.value = 1
        greenSwitch.isOn = false
        blueSlider.value = 1
        blueSwitch.isOn = false
        
        updateColor()
        updateControls()
    }

    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
    }

}

