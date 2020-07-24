//
//  MissoesScreen.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI



struct MissoesScreen: View {
    
    var matrix:[[String]] = [["1", "2"],
                             ["3", "4"],
                             ["5", "6"],
                             ["7", "8"]]
    
    
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack {
                    ForEach(matrix, id: \.self) { line in
                        HStack{
                            ForEach(line, id: \.self) { column in
                                NavigationLink(destination: Blocos()){
                                    CollectionViewCell(text: column)
                                }
                                
                            }
                        }
                    }
                }.navigationBarTitle("Missões")
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}



struct MissoesScreen_Previews: PreviewProvider {
    static var previews: some View {
        MissoesScreen()
    }
}
