//
//  InfoAboutMe.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 4/27/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import Foundation

class InfoAboutMe {
    static let shared = InfoAboutMe()
    
    let firstName: String = "Viktoria"
    let lastName: String = "Likhotkina"
    let image: String = "cv_photo"
    let greeting: String = "Gaining experience in real projects as iOS developer for further work in this direction."
    
    let contacts = Contacts()
    var skills = [Skill(skillName: "Swift", skillDescription: "Self learning from December 2018, passed intensive and several training projects in UNIT Factory"), Skill(skillName: "C", skillDescription: "Passed several training projects in UNIT Factory"), Skill(skillName: "Xcode", skillDescription: "Self learning during practice IOS development"), Skill(skillName: "UIKit", skillDescription: "Used in training projects"), Skill(skillName: "Foundation", skillDescription: "Used in training projects"), Skill(skillName: "Autolayout", skillDescription: "Used in training projects"), Skill(skillName: "Git", skillDescription: "Used for version control of training projects"), Skill(skillName: "JIRA", skillDescription: "Used on previous job for bug tracking"), Skill(skillName: "Redmine", skillDescription: "Used on previous job for bug tracking"), Skill(skillName: "Agile", skillDescription: "Worked with this methodology on previous job"), Skill(skillName: "API", skillDescription: "Made requests in training projects via URLSession and Alamofire"), Skill(skillName: "GCD", skillDescription: "Used in training projects"), Skill(skillName: "CoreData", skillDescription: "Familiar with, used in one project"), Skill(skillName: "JSON", skillDescription: "Used in training projects with Codable protocol")]
    
    var languages: [LanguageKnowledge] =
        [LanguageKnowledge(name: Languages.English.description, level: LanguageLevel.Intermediate.description),
         LanguageKnowledge(name: Languages.Ukrainian.description, level: LanguageLevel.Native.description),
         LanguageKnowledge(name: Languages.Russian.description, level: LanguageLevel.Native.description)]
    
    let education = [Education(institution: "UNIT Factory", degree: "Student, Computer science", duration: "2017 - 2020", status: EducationStatus.inProgress),
        Education(institution: "Kyiv National University of Trade and Economics", degree: "Master of Management", duration: "2010 - 2015", status: EducationStatus.completed)]
    
    let summary: [String] =
        ["Currently learning IOS development, passing courses, doing training projects.",
        "One and half year in UNIT Factory with 10 learning projects done on C language.",
        "Had tested websites and mobile apps in commercial projects as QA during 2 years.",
        "Worked with Agile methodology, team work experience."]
    
    var works =
        [Works(companyName: "UNIT Factory", position: "Student (Swift, C)", jobDescription: "At Unit Factory I started programming and have learned fundamentals like data structures, memory, file management etc. Except projects on C language I passed several intensives, such as C++, which gave me OOP basic experience. Also I passed IOS/Swift intensive course and I continue to study this area from that time.", duration: "September 2017 - present"),
         Works(companyName: "ExpoPlatform", position: "QA Engineer", jobDescription: "Grocery IT company which developed event management system consisting of CMS, websites and mobile applications. I worked with team of developers and testers,  created test cases for all products and performed all stages of testing manually.", duration: "Jan 2017 - Sep 2017"),
         Works(companyName: "Security Services Group", position: "QA Engineer", jobDescription: "Startup company which project is secure messenger (mobile apps and web version). Being a single tester I have organized testing process  and performed all cycle of manual testing.", duration: "Dec 2015 - Jan 2017")
    ]
}
