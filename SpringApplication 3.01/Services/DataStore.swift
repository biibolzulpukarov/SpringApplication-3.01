//
//  DataStore.swift
//  SpringApplication 3.01
//
//  Created by Бийбол Зулпукаров on 15/8/23.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
