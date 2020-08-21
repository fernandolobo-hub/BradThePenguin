//
//  ChallengeData.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import Foundation



struct Challenge: Identifiable, Hashable{
    
    var id = UUID()
    let name: String
    let topic: String
    var imageName: String
    let title: String
    let presentation: String
    let instructions: String
    let considerations: String
    let imgResult: String?
    
    
    
    
}

let challengeData: [Challenge] = [Challenge(name: "Desenhando e colorindo formatos", topic: "Teste seu conhecimento de formatos desenhando uma bandeira", imageName: "Flag", title: "Bandeira de um país", presentation: "  Como primeiro desafio, vamos testar seus conhecimentos para entender formatos, como funcionam seus parâmetros e també m como podemos preenchê-los com alguma cor e criar uma imagem ", instructions: "  Para testar estes conhecimentos, tente desenhar uma bandeira de um país que seja composto apenas por formatos retângulos simples(como por exemplo a da França) ajustando suas dimensões e devidas cores", considerations: "  Como exemplo, citado, analisando a bandeira da França notamos que ela é composta por 3 retângulos(azul, branco e vermelho) da esquerda para a direita que possuem mesma largura e altura, mas variam suas coordenadas. Como são três retângulos, a largura de cada um deve ser 1/3 da largura da cena e portanto suas coordenadas devem variar em 1/3 da cena, como foi feito neste exemplo.",  imgResult: nil),
    Challenge(name: "Desenhando balões", topic: "Usando incrementaçoes e loops para gerar movimento", imageName: "Lock", title: "Balões", presentation: "  Como primeiro desafio, vamos testar seus conhecimentos para entender formatos, como funcionam seus parâmetros e també m como podemos preenchê-los com alguma cor e criar uma imagem ", instructions: "  Para testar estes conhecimentos, tente desenhar uma bandeira de um país que seja composto apenas por formatos retângulos simples(como por exemplo a da França) ajustando suas dimensões e devidas cores", considerations: "  Como exemplo, citado, analisando a bandeira da França notamos que ela é composta por 3 retângulos(azul, branco e vermelho) da esquerda para a direita que possuem mesma largura e altura, mas variam suas coordenadas. Como são três retângulos, a largura de cada um deve ser 1/3 da largura da cena e portanto suas coordenadas devem variar em 1/3 da cena, como foi feito neste exemplo.",  imgResult: nil),
    Challenge(name: "Arte abstrata", topic: "Aprendendo a usar recursos interativos", imageName: "Lock", title: "Interagindo", presentation: "  Como primeiro desafio, vamos testar seus conhecimentos para entender formatos, como funcionam seus parâmetros e també m como podemos preenchê-los com alguma cor e criar uma imagem ", instructions: "  Para testar estes conhecimentos, tente desenhar uma bandeira de um país que seja composto apenas por formatos retângulos simples(como por exemplo a da França) ajustando suas dimensões e devidas cores", considerations: "  Como exemplo, citado, analisando a bandeira da França notamos que ela é composta por 3 retângulos(azul, branco e vermelho) da esquerda para a direita que possuem mesma largura e altura, mas variam suas coordenadas. Como são três retângulos, a largura de cada um deve ser 1/3 da largura da cena e portanto suas coordenadas devem variar em 1/3 da cena, como foi feito neste exemplo.",  imgResult: nil),
    Challenge(name: "Criando a sua mandala", topic: "Funçoes rotate e translate", imageName: "Lock", title: "Mandala", presentation: "  Como primeiro desafio, vamos testar seus conhecimentos para entender formatos, como funcionam seus parâmetros e també m como podemos preenchê-los com alguma cor e criar uma imagem ", instructions: "  Para testar estes conhecimentos, tente desenhar uma bandeira de um país que seja composto apenas por formatos retângulos simples(como por exemplo a da França) ajustando suas dimensões e devidas cores", considerations: "  Como exemplo, citado, analisando a bandeira da França notamos que ela é composta por 3 retângulos(azul, branco e vermelho) da esquerda para a direita que possuem mesma largura e altura, mas variam suas coordenadas. Como são três retângulos, a largura de cada um deve ser 1/3 da largura da cena e portanto suas coordenadas devem variar em 1/3 da cena, como foi feito neste exemplo.",  imgResult: nil)]


