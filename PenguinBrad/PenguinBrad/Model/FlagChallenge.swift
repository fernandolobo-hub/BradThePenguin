//
//  FlagChallenge.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 08/08/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import SwiftUI

struct FlagChallenge: View {
    var body: some View {
        VStack{
            Text("Possível Resultado esperado").font(.title).padding()
            Image("franceflag").resizable().aspectRatio(contentMode: .fit)
            Spacer()
            Text("Possível Resolução de código").font(.title)
            Image("franceflagcode").resizable().aspectRatio(contentMode: .fit)
        }
    }
}

struct FlagChallenge_Previews: PreviewProvider {
    static var previews: some View {
        FlagChallenge()
    }
}
