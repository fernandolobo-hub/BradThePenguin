//
//  MissoesScreen.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI



struct MissoesScreen: View {
    
    @State private var missionAlert = false
    
    var matrix2:[String] = ["Ativo_19", "Ativo_20","Ativo_21","Ativo_22","Ativo_25"]
    
    
    
    var body: some View {
        
        NavigationView{
            ScrollView {
                
                ZStack{
                    ZStack{
                        
                        VStack {
                            
                            ForEach(matrix2, id: \.self) { line in
                                HStack{
                                    //ForEach(line, id: \.self) { column in
                                    
                                    if line == "Ativo_19" {
                                        
                                        NavigationLink(destination: MissaoVAI()){
                                            
                                            CollectionViewCell(text: line)
                                        }
                                        
                                    }
                                        
                                    else if line == "Ativo_20"{
                                        
                                        NavigationLink(destination: BlocosTestFlight()){
                                            
                                            CollectionViewCell(text: line)
                                        }
                                    }
                                    
                                    else{
                                        
                                        Button(action: {
                                            
                                            
                                            self.missionAlert.toggle()
                                            
                                            
                                        }) {
                                            CollectionViewCell(text: line)
                                        }.buttonStyle(PlainButtonStyle())
                                        
                                    }
                                    
                                    
                                    
                                    
                                    
                                }
                            }
                        }.navigationBarTitle("Missões")
                            .alert(isPresented: self.$missionAlert){
                                Alert(title: Text("Bloqueado"), message: Text("Missão em desenvolvimento"),dismissButton: .default(Text("OK")))
                        }
                    }
                }
                
            }
            
        }}
    
}


struct MissoesScreen_Previews: PreviewProvider {
    static var previews: some View {
        MissoesScreen()
    }
}

