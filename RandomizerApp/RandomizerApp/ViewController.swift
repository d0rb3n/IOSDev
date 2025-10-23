//
//  ViewController.swift
//  RandomizerApp
//
//  Created by Darkhan on 23.10.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var carLabel: UILabel!
    @IBOutlet weak var randomizeButton: UIButton!
    
    let carImages: [UIImage] = [
        #imageLiteral(resourceName: "Dodge"),#imageLiteral(resourceName: "Volkswagen"),#imageLiteral(resourceName: "Ford"),#imageLiteral(resourceName: "Toyota"),#imageLiteral(resourceName: "Chevrolet"),#imageLiteral(resourceName: "Hyundai"),#imageLiteral(resourceName: "Honda"),#imageLiteral(resourceName: "Porsche"),#imageLiteral(resourceName: "Kia"),#imageLiteral(resourceName: "Tesla")
    ]
    
    let carNames: [String] = [
        "Dodge", "Volkswagen", "Ford", "Toyota", "Chevrolet",
        "Hyundai", "Honda", "Porsche", "Kia", "Tesla"
    ]

    @IBAction func randomizeButtonPressed(_ sender: UIButton) {
        let randomIndex = Int.random(in: 0..<carImages.count)
        carImageView.image = carImages[randomIndex]
        carLabel.text = carNames[randomIndex]
    }
}

