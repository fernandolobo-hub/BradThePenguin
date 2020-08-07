//
//  BlocosScrollView.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 31/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI
/*
struct Format: Identifiable {
    
    var id = UUID()
    let name: String
    var isTapped = false
    //let code: String
    //var isCorrect: Bool = false

    
}
*/

struct BlocoCommand: View {
    
    //let formats: [Format]
    @State private var dragAmount = CGSize.zero
    let formas : String
    let colores : Color
    //@Binding var dropped : BlocosScrollView?
    
    var body: some View {
        
        
        ZStack{
            
            
            
            
            /*
            Rectangle().frame(minWidth: 100, idealWidth: .infinity, maxWidth: .infinity, minHeight: 40, idealHeight: 95, maxHeight: 50)//.frame(minWidth: 1332, maxWidth: .infinity, minHeight: 100, idealHeight: 50, maxHeight: 50, alignment: .bottomLeading)
                .foregroundColor(Color.red).shadow(radius: 10)
                .cornerRadius(12)
                .edgesIgnoringSafeArea(.all)
                //.padding()
            */

            //ScrollView(.horizontal, showsIndicators: false){
                
                
                HStack{
                    
                    Spacer()
                    Image(systemName: formas).frame(width: 40, height: 40).foregroundColor(colores).padding()
                    Spacer()
                    }.offset(dragAmount)
                        .zIndex(dragAmount == .zero ? 0 :1 )
                        //.shadow(color: dragColor, radius: dragAmount == .zero ? 0 : 10)
                        .gesture(
                            DragGesture(coordinateSpace: .global)
                                .onChanged{
                                    self.dragAmount = CGSize(width: $0.translation.width, height: $0.translation.height)
                                }
                                .onEnded{_ in
                                    
                                    self.dragAmount = .zero
                                }
                    )
                    
                                
                            //}
                            
                            
                            
                            }
                        
                    }
                    
                    
                    
                }//.padding()
           // }
            //.padding(.vertical)
     //   }
    //}
//}

struct BlocosScrollView_Previews: PreviewProvider {
    static var previews: some View {
        BlocoCommand(formas: "circle.fill", colores: .yellow)
    }
}

