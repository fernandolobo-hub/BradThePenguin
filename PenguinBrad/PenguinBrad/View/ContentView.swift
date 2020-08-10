//
//  ContentView.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Colocando cor na Tab Bar
    
    var body: some View {
        //MARK: Construção da Tab Bar
        //Imagens da Tab Bar estou pegando o nome no SF Symbols (Baixei, recomendado pela Carol)
        //To achando os icones muito pequenos, péssima Acessibilidade
        
        //UITabBar.appearance().backgroundColor = UIColor.cyan
        
        TabView{

            MissoesScreen().tabItem({ //Redireciona o usuário a tela pelo botão
                Image(systemName: "house.fill").font(.none)
                Text("Missões")
                }).tag(0)//Ordem dos Elementos na Tab Bar
            Challenges().tabItem({ //Redireciona o usuário a tela pelo botão
                Image(systemName: "paintbrush.fill").font(.none)
                Text("Challenges")
            }).tag(1)
            ContentView2().tabItem({ //Redireciona o usuário a tela pelo botão
                Image(systemName: "person.3.fill").font(.none)
                    Text("Comunidade")
                }).tag(2) //Ordem dos Elementos na Tab Bar//Ordem dos Elementos na Tab Bar
//Ordem dos Elementos na Tab Bar
            
            
            }.accentColor(.black)//Mudar Cor dos elementos da Tab Bar
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




