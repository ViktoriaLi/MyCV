//
//  InfoAboutMe.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 4/27/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import Foundation

struct Contacts {
    let phone: String = "+38 063 879 38 37"
    let email: String = "viktoria.likhotkina@gmail.com"
    let github: String = "https://github.com/ViktoriaLi"
    let linkedin: String = "http://www.linkedin.com/in/viktoriali"
}

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

class InfoAboutMe {
    static let shared = InfoAboutMe()
    
    let firstName: String = "Viktoria"
    let lastName: String = "Likhotkina"
    let image: String = ""
    
    let contacts = Contacts()
    let skills = ["Swift" : "", "C": "", "Xcode": "", "UIKit": "", "Foundation": "", "Autolayout": "", "Git": "", "JIRA": "", "Redmine": "", "Agile": "", "API": "", "GCD": "", "CoreData": ""]
    
    let languages = ["English", "Ukrainian", "Russian"]
    
    let education = [Education(institution: "Kyiv National University of Trade and Economics", degree: "Master of Management", duration: "2010 - 2015")]
    
    let summary: [String] =
        ["Currently learning Swift and IOS development, passing courses, doing training projects.",
        "One and half year in UNIT Factory with 10 learning projects done on C language.",
        "Had tested manually websites and mobile apps in commercial projects as QA during 2 years.",
        "Worked with Agile methodology, team work experience."]
    
    let works =
        [Works(companyName: "UNIT Factory", position: "Student (Swift, C)", jobDescription: "At Unit Factory I started programming and have learned fundamentals like data structures, memory, file management etc. Except projects on C language I passed several intensives, such C++, which gave me OOP basic experience. Also I passed IOS/Swift intensive course and I continue to study this area from that time.", duration: "September 2017 - present"),
         Works(companyName: "ExpoPlatform", position: "QA Engineer", jobDescription: "Grocery IT company which developed event management system consisting of CMS, websites and mobile applications. I worked with team of developers and testers,  created test cases for all products and performed all stages of testing manually.", duration: "Jan 2017 - Sep 2017"),
         Works(companyName: "Security Services Group", position: "QA Engineer", jobDescription: "Startup company which project is  secure messenger (mobile apps and web version). Being a single tester I have organized testing process  and performed all cycle of manual testing.", duration: "Dec 2015 - Jan 2017")
    ]
    //let phone: String = "+38 063 879 38 37"
    //let phone: String = "Likhotkina"
}
