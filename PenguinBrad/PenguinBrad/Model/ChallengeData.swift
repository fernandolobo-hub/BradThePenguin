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

let challengeData: [Challenge] = [Challenge(name: "Desenhando e colorindo formatos", topic: "Teste seu conhecimento de formatos desenhando uma bandeira", imageName: "Trofeu"),
                                  Challenge(name: "Desenhando balões", topic: "Teste seu conhecimento de formatos desenhando um balão", imageName: "Trofeu"),
                                  Challenge(name: "Preenchendo com cores", topic: "Aprenda sobre a função fill()", imageName: "Trofeu"),
                                  Challenge(name: "Criando Loops", topic: "Teste seu conhecimento de formatos desenhando um trofeu", imageName: "Trofeu")]


