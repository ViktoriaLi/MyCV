//
//  Skill.swift
//  CV_by_V.Likhotkina
//
//  Created by Viktoriia LIKHOTKINA on 4/30/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import Foundation

struct Skill {
    var currentStatus: HeaderStatus = .close
    var skillName: String!
    var skillDescription: String!
    
    init(skillName: String, skillDescription: String) {
        self.skillName = skillName
        self.skillDescription = skillDescription
    }
}
