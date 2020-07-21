//
//  PerfilScreen.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct PerfilScreen: View {
    
    var body: some View {
        NavigationView{ //Mostrar página de Navegação
            VStack (alignment: .leading) {
                HStack{
                    Spacer() //Espaçamento na lateral esquerda
                    VStack (alignment: .center) {
                        Image("profile").resizable().aspectRatio(contentMode: .fill).frame(width: 200, height: 200).clipShape(Circle()).clipped().padding().shadow(radius: 10)
                    //.padding() é espaçamento na parte de cima
                    //.resizable() é para ajustar a foto
                        //Espaçamento na lateral direita
                        Text("Nome").font(.system(size: 20)).bold().padding(.top,0)
                        Text("Idade")
                        Text("Status")
                    
                    }
                    Spacer()

                }
                
                
                Text("Níveis Completos: ").bold().padding(22).font(.title)
                Spacer()
                }.navigationBarTitle("Perfil")//Nome que Indica Pagina
            
        }

    }
}

struct PerfilScreen_Previews: PreviewProvider {
    static var previews: some View {
        PerfilScreen()
    }
}
