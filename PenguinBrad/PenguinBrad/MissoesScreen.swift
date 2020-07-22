//
//  MissoesScreen.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI



struct Home: View {
    
    @State var data = [Type(name: "Formatos", pic: "person"),
                       Type(name: "Cores", pic: "heart.fill"),
                       Type(name: "Introducao Funcoes", pic: "house"),
                       Type(name: "Loops", pic: "house.fill"),
                       Type(name: "Recursion", pic: "book")]
    
    
    @State var grid: [Int] = []
    
    
    var body: some View{
    
        
        VStack{
     
            VStack{
                /*
                HStack {
                    
                    
                    Button(action: {
                        
                    }) {
                        
                        Image(systemName: "house")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 25, height: 23)
                        
                    }
                    
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "person").resizable().renderingMode(.original).frame(width: 22, height: 24)
                        
                    }
                
                    
                }
                */
                Text("Missões")
                    .font(.title)
                    .fontWeight(.bold)
                
            }

            MainView(data: self.data, grid: generateGrid())
            
        }
        .background(Color.black.opacity(0.06).edgesIgnoringSafeArea(.top))
        .edgesIgnoringSafeArea(.bottom)
        .onAppear(){
            
        }
        
    }
    
    func generateGrid() -> [Int]{
        
        var grid: [Int] = []
        
        for i in stride(from: 0, to: self.data.count, by: 2){
            
            if i != self.data.count{
                grid.append(i)
            }
            
        
        }
        return grid
    }
}


struct Card: View {
    
    var data: Type
    
    var body: some View{
        
        VStack(spacing: 15){
            
            Image(systemName: data.pic)
            .resizable()
                .frame(width: (UIScreen.main.bounds.width - 45) / 2, height: 260)
            .cornerRadius(12)
            
            Text(data.name)
            
            Button(action: {
                
            }) {
                Text("Play Now")
                    .foregroundColor(.white)
                    .frame(width: (UIScreen.main.bounds.width - 70) / 2)
                    .padding(.vertical, 10)
                
            } .background(Color.green)
            .cornerRadius(10)
            .shadow(radius: 6)
        }
    }
    
    
}

struct MainView: View {
    
    
    var data: [Type]
    var grid: [Int]
    
    
    init(data: [Type], grid: [Int]) {
        self.data = data
        self.grid = grid
    }
    
    var body: some View{
        
        VStack{
            
            if !self.grid.isEmpty{
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    VStack(spacing : 25){
                        
                        ForEach(self.grid, id: \.self){i in
                                        
                                        HStack(spacing: 15){
                                            
                                            ForEach(i...i + 1, id: \.self){j in
                                                
                                                VStack{
                                                    
                                                    if j != self.data.count{
                                                        Card(data: self.data[j])
                                                    }
                                                }
                                                
                        
                                            }
                                            
                                            if i == self.grid.last && self.data.count % 2 != 0 {
                                                Spacer(minLength: 0)
                                            }
                                        }
                                    }
                        
                    }
                    .padding()
                    
                }
            }
        }
    }
}

struct Type {
    var name: String
    var pic: String
}



struct MissoesScreen: View {
    var body: some View {
        Home()
    }
}
struct MissoesScreen_Previews: PreviewProvider {
    static var previews: some View {
        MissoesScreen()
    }
}
