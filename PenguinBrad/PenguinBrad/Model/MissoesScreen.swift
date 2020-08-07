//
//  MissoesScreen.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI



struct MissoesScreen: View {
    
    

    var matrix2:[String] = ["Missao2", "Ativo_7","Missao1","Ativo_8","Ativo_8"]
    
    
    var body: some View {

        NavigationView{
            ScrollView {
                
                ZStack{
                ZStack{

                VStack {

                    ForEach(matrix2, id: \.self) { line in
                        HStack{
                            //ForEach(line, id: \.self) { column in
                                NavigationLink(destination: Blocos()){
                                CollectionViewCell(text: line)
                                }.buttonStyle(PlainButtonStyle())
                                
                            }
                    }
                }.navigationBarTitle("Missões")
            }
                }//.background(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)).opacity(0.5)).navigationViewStyle(StackNavigationViewStyle())
            }}
        
        }}

    //}


struct MissoesScreen_Previews: PreviewProvider {
    static var previews: some View {
        MissoesScreen()
    }
        }

