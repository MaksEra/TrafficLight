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
    
    private var currentLight = TrafficLights.red
    private let LightOn: CGFloat = 1
    private let LightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actionButton.layer.cornerRadius = 15
        
        redLight.alpha = LightOff
        yellowLight.alpha = LightOff
        greenLight.alpha = LightOff
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }
    
    @IBAction func actionButton(_ sender: Any) {
        if actionButton.currentTitle == "Start" {
            actionButton.setTitle("Next", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = LightOn
            greenLight.alpha = LightOff
            currentLight = .yellow
        case .yellow:
            redLight.alpha = LightOff
            yellowLight.alpha = LightOn
            currentLight = .green
        case .green:
            yellowLight.alpha = LightOff
            greenLight.alpha = LightOn
            currentLight = .red
        }
        
    }

}

