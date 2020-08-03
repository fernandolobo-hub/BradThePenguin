//
//  Challenges.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI


struct Challenges: View {
    
    var body: some View {
        
        ZStack{
            
            NavigationView{
                
                List(challengeData){ challenge in
                    VStack{
                        HStack(alignment: .top){
                            Image(challenge.imageName)
                            .resizable()
                            .frame(width: 80, height: 90, alignment: .trailing)
                                .overlay(Rectangle().stroke(Color.secondary, lineWidth: 1)).padding(.top, 10)
                            VStack(alignment: .leading){
                                Text(challenge.name).font(.system(size: 20, weight: .bold, design: .default)).minimumScaleFactor(0.5)
                                Text(challenge.topic).font(.system(size: 16, weight: .semibold, design: .default)).minimumScaleFactor(0.5)
                                    .foregroundColor(.secondary)
                            }.navigationBarTitle("Challenges").font(.title).padding(.top, 10).padding(.leading, 5)
                            Spacer()
                        }
                        NavigationLink(destination: Text("Instructions")) {
                            EmptyView()
                        }.buttonStyle(PlainButtonStyle())
                    }
                    
                }
                
            }

        }
    }
}


struct Challenges_Previews: PreviewProvider {
    static var previews: some View {
        Challenges()
    }
}
/*
import SwiftUI


struct Challenges: View {
    
    var body: some View {
        
        ZStack{
            
            NavigationView{
                
                List(challengeData){ challenge in
                    VStack{
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text(challenge.name).font(.system(size: 20, weight: .bold, design: .default))
                                Text(challenge.topic).font(.system(size: 16, weight: .semibold, design: .default))
                                    .foregroundColor(.secondary)
                            }.navigationBarTitle("Challenges").font(.title)
                            Spacer()
                            Image(challenge.imageName)
                                .resizable()
                                .frame(width:89, height: 107, alignment: .trailing)
                                .overlay(Rectangle().stroke(Color.secondary, lineWidth: 1))
                        }
                        NavigationLink(destination: Text("Instructions")) {
                            EmptyView()
                        }.buttonStyle(PlainButtonStyle())
                    }
                    
                }
                
            }

        }
    }
}


struct Challenges_Previews: PreviewProvider {
    static var previews: some View {
        Challenges()
    }
}
*/
