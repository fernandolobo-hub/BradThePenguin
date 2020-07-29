//
//  MissoesScreen.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI



struct MissoesScreen: View {
    
    
    var matrix:[[String]] = [["Ativo_1","Ativo_1"],
                             ["Ativo_3","Ativo_4"],
                             ["Ativo_1","Ativo_1"],
                             ["Ativo_3","Ativo_4"]]
    
    var matrix2:[String] = ["Ativo_7", "Ativo_7","Ativo_7","Ativo_7","Ativo_7","Ativo_7"]
    
    
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
        }.navigationViewStyle(StackNavigationViewStyle())
                }}}
}
    //}


struct MissoesScreen_Previews: PreviewProvider {
    static var previews: some View {
        MissoesScreen()
    }
        }

