//
//  InfoModal.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let dataSentences = BreusonDialogue(["  Olá, me chamo Breuson", "  Ricardo é brabo", "  Vasco da Gama"])
    @State private var currentDialogue: String = ""
    @State private var tapped: Bool = false
    @State private var draggedOffset: CGSize = CGSize.zero
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            
            
            ZStack{
                Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)).edgesIgnoringSafeArea(.all).opacity(0.25)
                Group {
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 30)
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
                                    Image(systemName: "heart.fill")
                                    
                                }
                            
                            }
                            
                            //Spacer()
                        }.padding()
                    }.onAppear{
                        self.currentDialogue = self.dataSentences.current
                    }

                }.frame(width: 300, height: 400).foregroundColor(Color.white).shadow(radius: 5).padding(.bottom, 250)
                
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



