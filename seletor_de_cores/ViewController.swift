//
//  ViewController.swift
//  seletor_de_cores
//
//  Created by Aluno02 on 25/04/22.
//  Copyright © 2022 Aluno02. All rights reserved.
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.backgroundColor = .black
        redSwitch.onTintColor = .red
        greenSwitch.onTintColor = .green
        blueSwitch.onTintColor = .blue
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        desativaControls()
    }
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        //updateColor()
        updateControls()
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    func desativaControls() {
        redSlider.isEnabled = false
        greenSlider.isEnabled = false
        blueSlider.isEnabled = false
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    
    @IBAction func reset(_ sender: AnyObject) {
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        colorView.backgroundColor = .black
        desativaControls()
    }
}

