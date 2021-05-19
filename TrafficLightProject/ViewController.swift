//
//  ViewController.swift
//  TrafficLightProject
//
//  Created by Леся on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var currentLightState: Int?
    
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var button: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        button.layer.cornerRadius = 17
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        redView.layer.cornerRadius = redView.frame.size.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.size.width / 2
        
        greenView.layer.cornerRadius = greenView.frame.size.width / 2
        
    }

    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        button.setTitle("Next", for: .normal)
        
        if let currentState = currentLightState {
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
        
        switch currentState {
        case 1:
            currentLightState = 2
            yellowView.alpha = 1
        case 2:
            currentLightState = 3
            greenView.alpha = 1
        default:
            currentLightState = 1
            redView.alpha = 1
        break
        }
            
        } else {
            currentLightState = 1
            redView.alpha = 1
        }
    }
}







