//
//  ChallengeData.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import Foundation


struct Challenge: Identifiable{
    
    var id = UUID()
    let name: String
    let topic: String
    var imageName: String
    
    
}

let challengeData: [Challenge] = [Challenge(name: "Introduction to Processing", topic: "Functions draw and setup", imageName: "Elipse1"),
                                  Challenge(name: "Drawing your first formats", topic: "Formats", imageName: "Elipse2"),
                                  Challenge(name: "Filling with color", topic: "Function fill", imageName: "code"),
                                  Challenge(name: "Drawing red baloons", topic: "CHALLENGE", imageName: "baloon"),]


