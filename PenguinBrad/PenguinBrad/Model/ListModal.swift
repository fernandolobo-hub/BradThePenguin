//
//  ListModal.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 24/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct Selected: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Show Sheet"){
            self.showingSheet.toggle()
        }.sheet(isPresented: $showingSheet){
            ListView()
        }
}
}

struct ListView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)).edgesIgnoringSafeArea(.all).opacity(0.25)
            VStack{
            Text("Escolha uma das opções abaixo:")
            .font(.largeTitle)
            .fontWeight(.bold)
            .multilineTextAlignment(.center).frame(width: 300, height: 100)
                .lineLimit(4).padding()
                Spacer()
            }.padding()
            ScrollView (.horizontal) {
                VStack{

                HStack{
                    Rectangle().frame(width: 200, height: 80).foregroundColor(Color.white).border(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), width: 2).overlay(Text("Aqui seriam os blocos")).shadow(radius: 3).padding().onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()}


                    Rectangle().frame(width: 200, height: 80).foregroundColor(Color.white).border(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), width: 2).shadow(radius: 3).overlay(Text("Aqui seriam os blocos")).onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()}
                    
                    
                    Rectangle().frame(width: 200, height: 80).foregroundColor(Color.white).border(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), width: 2).shadow(radius: 3).overlay(Text("Aqui seriam os blocos")).padding().onTapGesture {
                    self.presentationMode.wrappedValue.dismiss()}
                    
                }
                }}.padding()
        }
    }}
        



struct ListModal_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
