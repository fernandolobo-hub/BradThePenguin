//
//  MissoesScreen.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct MissoesScreen: View {
    var body: some View {
        NavigationView{ //Mostrar página de Navegação
            VStack{
                Text("Tela de Missões")
                Image(systemName: "pencil")
                }.navigationBarTitle("Missões") //Nome que Indica Pagina

        }
}
}
struct MissoesScreen_Previews: PreviewProvider {
    static var previews: some View {
        MissoesScreen()
    }
}
