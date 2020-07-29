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
    
    
    var body: some View {
        NavigationView{
            ZStack{
            Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)).edgesIgnoringSafeArea(.all).opacity(0.40)
            ScrollView {
                ZStack{
                VStack {

                    ForEach(matrix, id: \.self) { line in
                        HStack{
                            ForEach(line, id: \.self) { column in
                                NavigationLink(destination: Blocos()){
                                CollectionViewCell(text: column)
                                }.buttonStyle(PlainButtonStyle())
                                
                            }
                    }
                }
            }.navigationBarTitle("Missões")
        }.navigationViewStyle(StackNavigationViewStyle())
                }}}
}
    }


struct MissoesScreen_Previews: PreviewProvider {
    static var previews: some View {
        MissoesScreen()
    }
        }

