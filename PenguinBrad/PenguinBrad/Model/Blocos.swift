//
//  Blocos.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct Blocos: View {
   
    
    var body: some View {
        

            ZStack {
                VStack{
                    ZStack{
                        
                        Rectangle().frame(height: 40)//.frame(minWidth: 1332, maxWidth: .infinity, minHeight: 100, idealHeight: 50, maxHeight: 50, alignment: .bottomLeading)
                            .foregroundColor(Color.white).shadow(radius: 10)//.padding()
                        HStack{
                            
                            Image(systemName: "play.fill").fixedSize().padding()
                            
                            Image(systemName: "list.dash").padding()
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
