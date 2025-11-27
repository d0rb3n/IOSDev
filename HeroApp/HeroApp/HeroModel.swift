//
//  HeroModel.swift
//  HeroApp
//
//  Created by Darkhan on 27.11.2025.
//

struct HeroModel: Decodable{
    let id: Int
    let name: String
    let biography: HeroBiography
    let images: HeroImage
    let powerstats: HeroPowerstat
    let appearance: HeroAppearance
    
    struct HeroBiography: Decodable{
        let fullName: String
    }
    
    struct HeroImage: Decodable{
        let md: String
    }
    
    struct HeroPowerstat: Decodable{
        let intelligence: Int
        let strength: Int
        let speed: Int
        let durability: Int
    }
    
    struct HeroAppearance: Decodable{
        let gender: String
        let race: String
        let height: [String]
        let weight: [String]
    }
}
