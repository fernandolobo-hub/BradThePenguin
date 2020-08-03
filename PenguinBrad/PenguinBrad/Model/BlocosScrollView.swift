//
//  BlocosScrollView.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 31/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct Format: Identifiable {
    
    var id = UUID()
    let name: String
    var isTapped = false
    //let code: String
    //var isCorrect: Bool = false

    
}


struct BlocosScrollView: View {
    
    let formats: [Format]
    
    var body: some View {
        
        
        ZStack{
            
            
            
            
            
            Rectangle().frame(minWidth: 100, idealWidth: .infinity, maxWidth: .infinity, minHeight: 40, idealHeight: 95, maxHeight: 50)//.frame(minWidth: 1332, maxWidth: .infinity, minHeight: 100, idealHeight: 50, maxHeight: 50, alignment: .bottomLeading)
                .foregroundColor(Color.red).shadow(radius: 10)
                .cornerRadius(12)
                .edgesIgnoringSafeArea(.all)
                //.padding()
            
            
            
            
            
            
            
            
            ScrollView(.horizontal, showsIndicators: false){
                
                
                HStack{
                    
                    
                    
                    ForEach(formats, id: \.id) { format in
                        HStack{
                            
                            
                            Spacer()
                            VStack{
                                Image(systemName: format.name)
                                    .offset(CGSize.zero)
                                    .scaledToFit()
                                
                                    
                                
                                
                                Text(format.name).font(.custom("Avenir", size: 12))
                                
                            }
                            
                            
                            
                        }.padding(30)
                        
                    }
                    
                    
                    
                }
            }
            .padding(.vertical)
        }
    }
}

struct BlocosScrollView_Previews: PreviewProvider {
    static var previews: some View {
        BlocosScrollView(formats: [Format(name: "circle"),
                                   Format(name: "triangle"),
                                   Format(name: "rectangle"),
                                   Format(name: "hexagon")])
    }
}

