//
//  ViewController.swift
//  TrafficLight
//
//  Created by Maks Era on 19.05.2021.
//

import UIKit

enum TrafficLights {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var actionButton: UIButton!
    
    private let LightOn: CGFloat = 1
    private let LightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actionButton.layer.cornerRadius = 15
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        
        redLight.alpha = LightOff
        yellowLight.alpha = LightOff
        greenLight.alpha = LightOff
    }
    
    @IBAction func actionButton(_ sender: Any) {
        actionButton.setTitle("Next", for: .normal)
        
        if redLight.alpha == LightOff {
            redLight.alpha = LightOn
            greenLight.alpha = LightOff
        } else if yellowLight.alpha == LightOff {
            redLight.alpha = LightOff
            yellowLight.alpha = LightOn
        } else if greenLight.alpha == LightOff {
            yellowLight.alpha = LightOff
            greenLight.alpha = LightOn
        }
        
    }

}

