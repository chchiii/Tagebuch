//
//  Eintrag.swift
//  Tagebuch
//
//  Created by Christopher on 05.08.15.
//  Copyright © 2015 Christopher. All rights reserved.
//

import Foundation

class Eintrag {
    
    var überschrift: String?
    var text: String?
    var datum: String?
    
    init(überschrift: String, text: String, datum: String) {
        self.text = text
        self.überschrift = überschrift
        self.datum = datum
    }
    
}