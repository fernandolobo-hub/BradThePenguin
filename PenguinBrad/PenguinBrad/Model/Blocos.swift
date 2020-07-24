//
//  SwiftUIView.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct Blocos: View {
   
    @State var showingModal = false
    @State var showingModal2 = false
    @State var showingModal3 = false
    var body: some View {
        

            ZStack {
                VStack{
                    ZStack{
                        
                        Rectangle().frame(height: 40)//.frame(minWidth: 1332, maxWidth: .infinity, minHeight: 100, idealHeight: 50, maxHeight: 50, alignment: .bottomLeading)
                            .foregroundColor(Color.white).shadow(radius: 10)//.padding()
                        HStack{
                            Button(action: {
                                self.showingModal.toggle()
                                print("esse")
                            }) {
                                Image(systemName: "info.circle").fixedSize().padding()
                                }.sheet(isPresented: $showingModal) {
                                    InfoView()
                                    
                            }
                            Button(action: {
                                self.showingModal2.toggle()
                                print("bra")
                            }) {
                                Image(systemName: "play.fill").fixedSize().padding()
                                }.sheet(isPresented: $showingModal2) {
                                    PlayView()
                            }
                            Button(action: {
                                self.showingModal3.toggle()
                            }) {
                                Image(systemName: "list.dash").fixedSize().padding()
                                }.sheet(isPresented: $showingModal3) {
                                    ListView()
                            }

                            
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.white).shadow(radius: 8)//.padding()
                        HStack{
                            VStack{
                            
                                Text("void setup(){")
                                .fontWeight(.bold).padding()
                                Spacer()
                                Text("}").fontWeight(.bold).padding(.leading, -40).padding(.top, -50)
                            }//.padding()
                            Spacer()
                        }.padding()
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.white).shadow(radius: 8)//.padding()
                        HStack{
                            
                            VStack{
                                Text("void setup(){")
                                    .fontWeight(.bold)//.padding()
                                Spacer()
                                Text("}").fontWeight(.bold).padding(.leading, -50).padding(.top, 50)
                            }.padding()
                            Spacer()
                        }.padding()
                    }

                }.padding(.bottom, 15)
                

            }.aspectRatio(0.5, contentMode: .fit).minimumScaleFactor(0.1)//.padding()
                

    }
}

struct Blocos_Previews: PreviewProvider {
    static var previews: some View {
        Blocos()
    }
}
