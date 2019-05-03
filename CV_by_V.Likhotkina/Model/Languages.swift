//
//  Languages.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 5/1/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import Foundation

enum Languages: String {
    case English = "English", Ukrainian = "Ukrainian", Russian = "Russian"
    var description : String {
        get {
            return self.rawValue
        }
    }
}

enum LanguageLevel: String {
    case Beginner, Elementary, PreIntermediate = "Pre-Intermediate", Intermediate, UpperIntermediate = "Upper intermediate", Advanced, Proficient, Native
    var description : String {
        get {
            return self.rawValue
        }
    }
}

struct LanguageKnowledge {
    var name: String!
    var level: String!
    
    init(name: String, level: String) {
        self.name = name
        self.level = level
    }
}
