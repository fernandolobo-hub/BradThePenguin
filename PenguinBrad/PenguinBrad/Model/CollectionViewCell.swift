//
//  CollectionViewCell.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//
import SwiftUI

struct CollectionViewCell: View {

    var text:String
    

    
    var body: some View {
        ZStack{
    
            Image(text).resizable().renderingMode(.original).aspectRatio( contentMode: .fit)
            
        }.padding(.bottom, 5).padding([.leading,.trailing])
        
    }
    
}
    


struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(text: "Ativo_7")
    }
}
