//
//  ViewController.swift
//  T-Converter
//
//  Created by Mac on 04.01.21.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet {
            slider.maximumValue = 100
            slider.minimumValue =  0
            slider.value = 0
             
        }
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsius)ºC"
        
        let fahrenheitTemperature = Int(round((slider.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
    
    
}

