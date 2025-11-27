//
//  ViewController.swift
//  HeroApp
//
//  Created by Darkhan on 27.11.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var heroName: UILabel!
    @IBOutlet private weak var heroImage: UIImageView!
    @IBOutlet private weak var fullName: UILabel!
    @IBOutlet private weak var race: UILabel!
    @IBOutlet private weak var gender: UILabel!
    @IBOutlet private weak var height: UILabel!
    @IBOutlet private weak var weight: UILabel!
    
    @IBOutlet private weak var intelligence: UIProgressView!
    @IBOutlet private weak var strength: UIProgressView!
    @IBOutlet private weak var speed: UIProgressView!
    @IBOutlet private weak var durability: UIProgressView!

    var service = HeroService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        service.delegate = self
    }
    
    @IBAction private func getHeroes(){
        let randomId = Int.random(in: 1...563)
        service.fetchHeroes(randomId: randomId)
    }
}

extension ViewController: HeroServiceDelegate {
    func onHeroDidUpdate(model: HeroModel, imageData: Data) {
        heroName.text = model.name
        heroImage.image = UIImage(data: imageData)
        fullName.text = model.biography.fullName
        race.text = "Race: \(model.appearance.race ?? "Unknown")"
        gender.text = "Gender: \(model.appearance.gender)"
        height.text = "Height: \(model.appearance.height)"
        weight.text = "Weight: \(model.appearance.weight)"
        
        let stats = model.powerstats
        
        intelligence.progress = Float(stats.intelligence) / 100
        strength.progress = Float(stats.strength) / 100
        speed.progress = Float(stats.speed) / 100
        durability.progress = Float(stats.durability) / 100
    }
}

