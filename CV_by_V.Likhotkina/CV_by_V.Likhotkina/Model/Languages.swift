//
//  Languages.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 5/1/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import Foundation

enum Languages: String {
    case English, Ukrainian, Russian
    var description : String {
        get {
            switch self {
            case .English:
                return NSLocalizedString("English", comment: "")
            case .Ukrainian:
                return NSLocalizedString("Ukrainian", comment: "")
            case .Russian:
                return NSLocalizedString("Russian", comment: "")
            }
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
