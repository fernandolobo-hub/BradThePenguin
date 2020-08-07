//
//  InfoModal.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let dataSentences = BreusonDialogue(["  Olá, me chamo Breuson, e estou aqui para introduzir para você alguns conceito programação criativa em Processing, vamos lá!", "Primeiro, você deve definir as funções setup e draw como aparecem para você na imagem. A setup é chamada apenas uma vez, enquanto a draw roda constantemente.", "Para desenhar seu primeiro formato, clique no círculo disponibilizado na barra", "A chamada circle(x,y,r) define a posição do eixo x, do eixo y e o raio do seu círculo respectivamente", "Aperte o botão de play para rodar o seu código", "Parabéns, você desenhou seu primeiro formato"])
    @State private var currentDialogue: String = ""
    @State private var tapped: Bool = false
    @State private var draggedOffset: CGSize = CGSize.zero
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            
            
            ZStack{
                Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(0.15).edgesIgnoringSafeArea(.all)
                Group {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 30).shadow(radius: 2)
                        VStack {
                            HStack {
                                Text(currentDialogue).foregroundColor(Color.black).font(.custom("Avenir Next", size: 20))
                                Spacer()
                            }
                            
                            Spacer()
                            HStack {
                                Spacer()
                                Button(action: {
                                    self.currentDialogue = self.dataSentences.next
                                }) {
                                    ZStack{
                                        Circle().foregroundColor(Color.white).frame(width: 30, height: 30).shadow(radius: 3)
                                    Image(systemName: "heart.fill").foregroundColor(Color.pink)
                                    }
                                }
                            
                            }
                            
                            
                        }.padding()
                    }.onAppear{
                        self.currentDialogue = self.dataSentences.current
                    }

                }.frame(width: 300, height: 400).foregroundColor(Color.white).padding(.bottom, 250)
                
                Circle().foregroundColor(Color.white).frame(width: 20, height: 20).padding(.top, 200)
                Circle().foregroundColor(Color.white).frame(width: 15, height: 15).padding(.top, 250).padding(.trailing, 30)
                
                Image("breuson").resizable().aspectRatio(contentMode: .fit).padding(.top, 500).padding(.trailing, 175)
                
            
                
                
            }.onTapGesture {
                self.presentationMode.wrappedValue.dismiss()}
            
        }
            
            
        
        /*draggable.gesture(DragGesture()
        .onChanged{ value in
            self.draggedOffset = value.translation
        }
            
        .onEnded{ value in
            self.draggedOffset = CGSize.zero
            }
            
        )*/
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}



