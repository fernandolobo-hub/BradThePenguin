//
//  InfoModal.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
    let dataSentences = BreusonDialogue(["Olá novamente. \nAntes de tudo é indicado que você acompanhe as missões junto com a interface do Processing no computador, executando o código ensinado, se possível. \nTodo código das missões pode ser escrito na interface.","A primeira coisa que devemos fazer é digitar duas funções fundamentais para a construção da nossa cena. São elas as void setup() e a função void draw().","A função void setup() roda apenas uma vez e serve para definir o ambiente em que rodaremos nosso desenho, como o tamanho da tela.","A função void draw() é a função, como o nome diz, que irá desenhar no plano as formas e figuras que quisermos.","Com isso que você aprendeu, tente experimentar e brincar com os conceitos."," O que aconteceria se essas funções estivessem em outro lugar? E se os números mudassem? Não tem problema se der algum erro, use a criatividade! "])
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
                                if currentDialogue != "Olá novamente. \nAntes de tudo é indicado que você acompanhe as missões junto com a interface do Processing no computador, executando o código ensinado, se possível. \nTodo código das missões pode ser escrito na interface." {
                                    
                                Button(action: {
                                    self.currentDialogue = self.dataSentences.previous
                                }) {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 5).foregroundColor(Color.white).frame(width: 70, height: 25).shadow(radius: 2)
                                    Text("Anterior").foregroundColor(Color.blue)
                                    }
                                    }
                                    Spacer()
                                }
                                //Spacer()
                                if currentDialogue !=  " O que aconteceria se essas funções estivessem em outro lugar? E se os números mudassem? Não tem problema se der algum erro, use a criatividade! "{
                                Button(action: {
                                    self.currentDialogue = self.dataSentences.next
                                }) {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 5).foregroundColor(Color.white).frame(width: 70, height: 25).shadow(radius: 2)
                                    Text("Próximo").foregroundColor(Color.blue)
                                    }
                                    
                                }
                               Spacer()

                            
                                }}
                            
                            
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



