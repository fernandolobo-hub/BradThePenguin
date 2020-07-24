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
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .aspectRatio(0.95, contentMode: .fit)
                .foregroundColor(Color(#colorLiteral(red: 0.3766202629, green: 0.5381811261, blue: 0.4516254663, alpha: 1)))//.padding(.bottom)
            
                Text("Play Now")
                    .foregroundColor(.white)
                    .frame(width: (UIScreen.main.bounds.width - 70) / 2)
                    .padding(.vertical, 10).background(Color.green)
                    .cornerRadius(10)
                    .shadow(radius: 6)

        }.padding()
        }
        }
        
    


struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(text: "Olá mundo")
    }
}
