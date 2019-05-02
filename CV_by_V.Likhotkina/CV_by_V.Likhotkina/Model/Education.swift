//
//  Education.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 4/27/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

enum EducationStatus: String {
    case inProgress = "In progress", completed = "Completed"
    var description : String {
        get {
            return self.rawValue
        }
    }
}

struct Education {
    let institution: String
    let degree: String
    let duration: String
    let status: String
    
    init(institution: String, degree: String, duration: String, status: String) {
        self.institution = institution
        self.degree = degree
        self.duration = duration
        self.status = status
    }
}
