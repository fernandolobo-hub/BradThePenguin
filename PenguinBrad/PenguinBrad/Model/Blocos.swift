//
//  SwiftUIView.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct Blocos: View {
    
    let formas = ["circle.fill","triangle.fill","rectangle.fill"]
    let coresChoice = [Color.red, Color.yellow, Color.black]
    @State var isDragging = false
    @State var showingModal = false
    @State var showingModal2 = false
    @State var showingModal3 = false
    @State var setUpText: [String] = ["void setup(){", "a", "b"]
    //NSAttributedString
    
    
    var body: some View {
        
        ZStack{
            Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(0.15).edgesIgnoringSafeArea(.all)
            ZStack {
                
                VStack{
                    
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(Color.white).cornerRadius(20).shadow(radius: 3)
                            //.border(Color.black, width: 2)//.shadow(radius: 8)//.padding()
                        
                        Spacer()
                        HStack{
                            VStack{
                                ForEach (setUpText, id: \.self){ item in
                                    
                                    Text(item).font(.custom("Avenir Next", size: 17))
                                    .fontWeight(.bold).padding()
                                    
                                }
                                //Spacer(minLength: 50)

                                Text("}").font(.custom("Avenir Next", size: 17)).fontWeight(.bold).padding(.leading, -40).padding(.top, -30)
                                Spacer(minLength: 50)
                               /*                                 Spacer()
                                Text("}").font(.custom("Avenir Next", size: 17)).fontWeight(.bold).padding(.leading, -40).padding(.top, -30).padding(.bottom, 10)
                                Text("void draw(){").font(.custom("Avenir Next", size: 17)).fontWeight(.bold).padding()
                                //Text("Size(300, 300);")
                                Spacer()
                                Text("}").font(.custom("Avenir Next", size: 17)).fontWeight(.bold).padding(.leading, -40).padding(.top, -30)
                                }*/}//.padding()
                            Spacer()
                        }//.padding()
                    }
                  /*  ZStack{
                        Rectangle()
                        .foregroundColor(Color.white).border(Color.black, width: 1)
                       // RoundedRectangle(cornerRadius: 20)
                        //.foregroundColor(Color.white)//.shadow(radius: 8)//.padding()
                        HStack{
                            
                            VStack{
                                Text("void draw(){")
                                    
                                    .fontWeight(.bold)//.padding()
                                    //Text("circle(150, 150, 50);")
                                
                                Spacer()
                                Text("}").fontWeight(.bold).padding(.leading, -50).padding(.top, 50)
                            }.padding()
                            Spacer()
                        }.padding()
                    }*/
                    
                    ZStack{
                        Rectangle().frame(minWidth: 100, idealWidth: .infinity, maxWidth: .infinity, minHeight: 36, idealHeight: 63, maxHeight: 70).foregroundColor(Color.black).shadow(radius: 5)
                        .cornerRadius(12)
                            .edgesIgnoringSafeArea(.all).padding(.top, 8)
                        Rectangle().frame(minWidth: 100, idealWidth: .infinity, maxWidth: .infinity, minHeight: 30, idealHeight: 70, maxHeight: 70)//.frame(minWidth: 1332, maxWidth: .infinity, minHeight: 100, idealHeight: 50, maxHeight: 50, alignment: .bottomLeading)
                        
                            .foregroundColor(Color.white).shadow(radius: 5)
                            .cornerRadius(5)
                       
                    HStack{
                        ForEach (0..<3) { i in
                            BlocoCommand(formas: self.formas[i], colores: self.coresChoice[i])
                        }
                        }.padding()
                        //BlocosScrollView(formats: formats)
                        

                        
                        
                    }
                    
                    ZStack{
                        
                        /*Rectangle().frame(height: 40)//.frame(minWidth: 1332, maxWidth: .infinity, minHeight: 100, idealHeight: 50, maxHeight: 50, alignment: .bottomLeading)
                            .foregroundColor(Color.white).shadow(radius: 10)//.padding()*/
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
                            
                            Button(action: {
                                self.showingModal2.toggle()
                                print("bra")
                            }) {
                                ZStack{
                                Circle().foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).frame(width: 50, height: 50).shadow(radius: 3).overlay(Image(systemName: "play.fill").fixedSize().padding())
                                }}.sheet(isPresented: $showingModal2) {
                                    PlayView()
                                }.buttonStyle(PlainButtonStyle()).foregroundColor(Color.blue).padding()
                            
                            
                           /* Button(action: {
                                self.showingModal3.toggle()
                            }) {
                                Image(systemName: "list.dash").fixedSize().padding()
                                }.sheet(isPresented: $showingModal3) {
                                    ListView()
                            }*/

                            
                        }
                    }
                    

                }.padding(.bottom)
                

                }.edgesIgnoringSafeArea(.trailing).aspectRatio(0.5, contentMode: .fit).minimumScaleFactor(0.1)//.padding()
        }

    }
}

struct Blocos_Previews: PreviewProvider {
    static var previews: some View {
        Blocos()
    }
}










