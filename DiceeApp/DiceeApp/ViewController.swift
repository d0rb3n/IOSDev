//
//  ViewController.swift
//  DiceeApp
//
//  Created by Darkhan on 23.10.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LDice: UIImageView!
    @IBOutlet weak var RDice: UIImageView!
    @IBOutlet weak var ROLLbutton: UIButton!

    let diceImages: [UIImage] = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    let diceImagesEnum: [UIImage] = [
        .diceOne, .diceTwo, .diceThree, .diceFour, .diceFive, .diceSix
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        LDice.image = .diceFive
        RDice.image = .diceFour
        ROLLbutton.layer.cornerRadius = 16
        ROLLbutton.backgroundColor = .systemTeal
    }

    @IBAction func rollButtonDidTap(_ sender: UIButton) {
        let randomIndex = Int.random(in: 0..<diceImages.count)
        LDice.image = diceImages[randomIndex]
        RDice.image = diceImages.randomElement()
    }
}

