//
//  MissaoVAI.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 20/08/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct MissaoVAI: View {
    
    @State var previewView = false
    @State var showingModal = false

    
    
    var body: some View {
        ZStack {
                 Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(0.15).edgesIgnoringSafeArea(.all)
                     ZStack{
                 VStack{
                     ZStack{
                         Rectangle()
                             .foregroundColor(Color.white)
                             .cornerRadius(20).shadow(radius: 3)
                         VStack{
                         HStack{
                             Text("void setup() {").fontWeight(.bold).font(.custom("Avenir Next", size: 14)).padding()
                             Spacer()
                         }
                         HStack{
                             Spacer()
                         }.padding(.leading, 20)
                             HStack{
                                 Text("}").fontWeight(.bold).font(.custom("Avenir Next", size: 14)).padding(.leading, 20)
                                 Spacer()
                             }.padding()
                             HStack{
                                 Text("void draw() {").font(.custom("Avenir Next", size: 14)).fontWeight(.bold).padding()
                                 Spacer()
                             }

                             HStack{
                                 Text("}").font(.custom("Avenir Next", size: 14)).fontWeight(.bold).padding(.leading, 20)
                                 Spacer()
                             }.padding()
                             Spacer()
                         }.padding().buttonStyle(PlainButtonStyle())
                             
                         
                     }.padding()
                     
        
                   
                     HStack{
                             Button(action: {
                                 self.showingModal.toggle()
                                 print("esse")
                             }) {
                                 ZStack{
                                     
                                     Circle().foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).frame(width: 50, height: 50).shadow(radius: 3).overlay(Image(systemName: "info.circle").fixedSize().padding())
                                 }}.sheet(isPresented: $showingModal) {
                                     InfoView()
                                     
                             }.buttonStyle(PlainButtonStyle()).foregroundColor(Color.blue)
                         
                 }
                         Spacer()
                    Spacer()
                         }

                        }.padding().blur(radius: previewView ? 0 : 6)
                     if !previewView{
                     ZStack{
                         VStack{
                             ZStack{
                                RoundedRectangle(cornerRadius: 5).foregroundColor(Color.white).frame(width: 350, height: 300).shadow(radius: 3).overlay(Text("    Olá, meu nome é Benny e eu serei seu guia nessa jornada de introdução à programação criativa através da linguagem Processing. \n    Irei te auxiliar ao longo das missões dando dicas, indicando o que deve ser feito e explicando os conceitos ao longo das missões. \n    Toda vez que estiver com dúvidas, clique em Info.").font(.custom("Avenir Next", size: 16)).padding()).padding()}
                             HStack{
                                 Image("breuson").resizable().frame(width: 50, height: 100)
                                 Spacer()
                             }.padding(.leading, 100)
                             
                     Button(action: {
                         self.previewView.toggle()
                         print("esse")
                     }) {
                         ZStack{
                             RoundedRectangle(cornerRadius: 5).foregroundColor(Color.white).frame(width: 150, height: 30).shadow(radius: 3)
                            Text ("Aceitar Missão").lineLimit(5).padding()
                             
                        }
                         
                             }}
                            .padding(.top, 50)
                     }
                       
                     }
             }
    }
}

struct MissaoVAI_Previews: PreviewProvider {
    static var previews: some View {
        MissaoVAI()
    }
}
