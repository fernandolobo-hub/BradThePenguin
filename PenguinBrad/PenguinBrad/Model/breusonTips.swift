//
//  breusonTips.swift
//  PenguinBrad
//
//  Created by Fernando Lobo on 29/07/20.
//  Copyright © 2020 Fernando Lobo. All rights reserved.
//

import Foundation
import SwiftUI



class BreusonDialogue {
    
    var i: Int = 0
    var sentences: [String]
    
    var isAtBegin: Bool { return i == 0 }
    var isAtEnd: Bool {return i == sentences.count - 1}
    var previous: String {
        self.i -= 1
        self.i = i < 0 ? 0 : i
        return sentences[i]
        
    }
    var next: String {
        
        self.i += 1
        self.i = i >= sentences.count ? sentences.count - 1 : i
        return sentences[i]
    }
    
    var current: String{ return sentences[i] }
    
    init(_ sentences: [String]) {
        self.sentences = sentences
    }
    
    
    
}



struct breusonTips_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
