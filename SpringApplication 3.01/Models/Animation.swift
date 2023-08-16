//
//  Animation.swift
//  SpringApplication 3.01
//
//  Created by Бийбол Зулпукаров on 15/8/23.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animations.randomElement()?.rawValue ?? "squeeze",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeInOut",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 0.3
        )
    }
}
