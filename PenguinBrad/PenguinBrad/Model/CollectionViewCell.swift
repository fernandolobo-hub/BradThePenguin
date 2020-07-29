//
//  CollectionViewCell.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

import SwiftUI

struct CollectionViewCell: View {

    var text:String

    
    var body: some View {
        ZStack{
            
                
            Image("greenMission").resizable().aspectRatio(1, contentMode: .fit).overlay(Text("Aceitar")
            .foregroundColor(.white).fontWeight(.bold).font(.custom("Avenir Next", size: 20))
                .frame(width: (UIScreen.main.bounds.width - 70) / 2)
            .padding(.vertical, 10).background(Color.black)
            .cornerRadius(10)
                .shadow(radius: 6).padding(.top, 70))
                
                //.aspectRatio(contentMode: .fit)
                
                
            
           // }.padding()
            
        }.padding()
        
    }
    
}
    


struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(text: "Ativo_1")
    }
}
