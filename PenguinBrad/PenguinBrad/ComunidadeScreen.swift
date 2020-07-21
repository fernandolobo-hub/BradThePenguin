//
//  ComunidadeScreen.swift
//  PenguinBrad
//
//  Created by Bruna Costa on 21/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct ComunidadeScreen: View {
        var body: some View {
            NavigationView{ //Mostrar página de Navegação
                VStack{
                    Text("Tela de Comunidade")
                }.navigationBarTitle("Comunidade") //Nome que Indica Pagina

            }
    }
    }
struct ComunidadeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ComunidadeScreen()
    }
}
