//
//  BlocosTestFlight.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 20/08/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct BlocosTestFlight: View {

    
    @State var showingModal = false
    @State var showingModal2 = false
    @State var showingModal3 = false
    @State var addItem1 = false
    @State var addItem2 = false
    
    
    var body: some View {
        

            ZStack {
                Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(0.15).edgesIgnoringSafeArea(.all)
                
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
                            Button(action: {
                                self.addItem1.toggle()
                            }) {
                                ZStack{
                                    
                                    if !addItem1 {
                                        Rectangle().foregroundColor(Color.white).border(Color.black).frame(width: 130, height: 45).shadow(radius: 2).overlay(Text("size (500, 500)").blur(radius: 5)).padding()
                                    }
                                    else {
                                        Text("size (500, 500)").blur(radius: 0).padding(.leading, 10).font(.custom("Avenir Next", size: 14))
                                    }
                                    }
                                    
                                }
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
                           Button(action: {
                                self.addItem2.toggle()
                            }) {
                                ZStack{
                                    HStack{
                                    if addItem2 == true {
                                        Text("triangle (200,200,300,300,250,200)").foregroundColor(Color.green).font(.custom("Avenir Next", size: 14)).padding(.leading, 20)
                                    }
                                    else{
                                        Rectangle().foregroundColor(Color.white).border(Color.black).frame(width: 130, height: 45).shadow(radius: 2).overlay(
                                            Image(systemName: "triangle").foregroundColor(Color.green)).padding()
                                    }
                                        Spacer()
                                    }.padding()
                                }
                                }.buttonStyle(PlainButtonStyle())
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
                                    InfoModal2()
                                    
                            }.buttonStyle(PlainButtonStyle()).foregroundColor(Color.blue)
                            
                            Button(action: {
                                self.showingModal2.toggle()
                                print("bra")
                            }) {
                                ZStack{
                                Circle().foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).frame(width: 50, height: 50).shadow(radius: 3).overlay(Image(systemName: "play.fill").fixedSize().padding())
                                }}.sheet(isPresented: $showingModal2) {
                                    PlayView()
                                }.buttonStyle(PlainButtonStyle()).foregroundColor(Color.blue).padding()
                }}
                            
                        }
                    }
}
                    

               
                
        




struct BlocosTestFlight_Previews: PreviewProvider {
    static var previews: some View {
        BlocosTestFlight()
    }
}
