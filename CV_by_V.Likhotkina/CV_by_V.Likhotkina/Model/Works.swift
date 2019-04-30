//
//  Works.swift
//  CV_by_V.Likhotkina
//
//  Created by Viktoriia LIKHOTKINA on 4/30/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import Foundation

struct Works {
    let companyName: String
    let position: String
    let jobDescription: String
    let duration: String
    
    init(companyName: String, position: String, jobDescription: String, duration: String) {
        self.companyName = companyName
        self.position = position
        self.jobDescription = jobDescription
        self.duration = duration
    }
}
