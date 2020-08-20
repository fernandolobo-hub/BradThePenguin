//
//  InfoModal2.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 20/08/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct InfoModal2: View {
    
    let dataSentences = BreusonDialogue(["Olá novamente. \nPrimeiramente, para você conseguir adicionar qualquer coisa na sua tela, você precisa criá-la! Para fazer isso, toque no primeiro bloco da funcão setup. O termo “size” que apareceu indica o tamanho da tela ","Agora você pode adicionar na sua tela formas 2D,para isso, clique no triângulo da função draw(). \nVeja como a figura se adaptou ao código que seria em Processing!","Agora que você desvendou as formas,você pode visualizar o que criou clicando no botão para Play","Note que as coordenadas são medidas a partir do canto superior esquerdo da tela. Portanto, quanto maior o número do X e Y, o objeto estará mais próximo ao canto direito inferior respectivamente."])
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
                                if currentDialogue != "Olá novamente. \nPrimeiramente, para você conseguir adicionar qualquer coisa na sua tela, você precisa criá-la! Para fazer isso, toque no primeiro bloco da funcão setup. O termo “size” que apareceu indica o tamanho da tela " {
                                    
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
                                if currentDialogue !=  "Note que as coordenadas são medidas a partir do canto superior esquerdo da tela. Portanto, quanto maior o número do X e Y, o objeto estará mais próximo ao canto direito inferior respectivamente."{
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
    }
}

struct InfoModal2_Previews: PreviewProvider {
    static var previews: some View {
        InfoModal2()
    }
}
