//
//  ViewController.swift
//  SpringApplication 3.01
//
//  Created by Бийбол Зулпукаров on 10/8/23.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getRandomAnimation()

    
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description

        animationView.animation = animation.preset
        animationView.force = animation.force
        animationView.duration = animation.duration
        animationView.delay = animation.delay
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
}

