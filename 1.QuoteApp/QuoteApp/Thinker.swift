//
//  Thinker.swift
//  QuoteApp
//
//  Created by Edwaldo Almeida on 2019-06-03.
//  Copyright © 2019 Edwaldo Almeida. All rights reserved.
//

import Foundation

class Thinker {
    let name: String
    let quote: String
    let image: String
    
    init(){
        self.name = ""
        self.quote = ""
        self.image = ""
    }
    
    init(name: String, quote: String, image: String){
        self.name = name
        self.quote = quote
        self.image = image
    }
}
