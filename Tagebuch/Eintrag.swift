//
//  Eintrag.swift
//  Tagebuch
//
//  Created by Christopher Lindhof on 05.08.15.
//  Copyright © 2015 Christopher Lindhof. All rights reserved.
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