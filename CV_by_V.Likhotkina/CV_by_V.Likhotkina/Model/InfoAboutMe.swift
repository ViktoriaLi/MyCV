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
    
    let firstName: String = NSLocalizedString("Viktoria", comment: "")
    let lastName: String = NSLocalizedString("Ліхоткіна", comment: "")
    let image: String = "cv_photo"
    let greeting: String = "Hello, I'm Viktoria..."
    
    let contacts = Contacts()
    var skills = [Skill(skillName: "Swift", skillDescription: NSLocalizedString("Self learning from December 2018, passed intensive and several training projects UNIT Factory", comment: "")), Skill(skillName: "C", skillDescription: NSLocalizedString("I had been studying C for over a year, passed several training projects in UNIT Factory", comment: "")), Skill(skillName: "Xcode", skillDescription: NSLocalizedString("Self learning during practice IOS development", comment: "")), Skill(skillName: "UIKit", skillDescription: NSLocalizedString("Used in training projects", comment: "")), Skill(skillName: "Foundation", skillDescription: NSLocalizedString("Used in training projects", comment: "")), Skill(skillName: "Autolayout", skillDescription: NSLocalizedString("Used in training projects", comment: "")), Skill(skillName: "Git", skillDescription: NSLocalizedString("Used for version control of training projects", comment: "")), Skill(skillName: "JIRA", skillDescription: NSLocalizedString("Used on previos job for bug tracking", comment: "")), Skill(skillName: "Redmine", skillDescription: NSLocalizedString("Used on previos job for bug tracking", comment: "")), Skill(skillName: "Agile", skillDescription: NSLocalizedString("Worked with this methodology on previos job", comment: "")), Skill(skillName: "API", skillDescription: NSLocalizedString("Made requests in training projects via URLSession and Alamofire", comment: "")), Skill(skillName: "GCD", skillDescription: "Used in projects"), Skill(skillName: "CoreData", skillDescription: NSLocalizedString("Familiar with", comment: "")), Skill(skillName: "JSON", skillDescription: "Used in training projects with Codable protocol"), Skill(skillName: "CoreData", skillDescription: NSLocalizedString("Familiar with", comment: ""))]
    
    var languages: [LanguageKnowledge] =
        [LanguageKnowledge(name: Languages.English.description, level: LanguageLevel.Intermediate.description),
         LanguageKnowledge(name: Languages.Ukrainian.description, level: LanguageLevel.Native.description),
         LanguageKnowledge(name: Languages.Russian.description, level: LanguageLevel.Native.description)]
    
    let education = [Education(institution: "UNIT Factory", degree: NSLocalizedString("Student, Computer science", comment: ""), duration: "2017 - 2020", status: EducationStatus.inProgress),
                     Education(institution: NSLocalizedString("Kyiv National University of Trade and Economics", comment: ""), degree: NSLocalizedString("Master of Management", comment: ""), duration: "2010 - 2015", status: EducationStatus.completed)]
    
    let summary: [String] =
        [NSLocalizedString("Currently learning Swift and IOS development, passing courses, doing training projects.", comment: ""),
         NSLocalizedString("One and half year in UNIT Factory with 10 learning projects done on C language.", comment: ""),
         NSLocalizedString("Had tested manually websites and mobile apps in commercial projects as QA during 2 years.", comment: ""),
         NSLocalizedString("Worked with Agile methodology, team work experience.", comment: "")]
    
    var works =
        [Works(companyName: "UNIT Factory", position: NSLocalizedString("Student (Swift, C)", comment: ""), jobDescription: NSLocalizedString("At Unit Factory I started programming and have learned fundamentals like data structures, memory, file management etc. Except projects on C language I passed several intensives, such C++, which gave me OOP basic experience. Also I passed IOS/Swift intensive course and I continue to study this area from that time.", comment: ""), duration: NSLocalizedString("September 2017 - present", comment: "")),
         Works(companyName: "ExpoPlatform", position: NSLocalizedString("QA Engineer", comment: ""), jobDescription: NSLocalizedString("Grocery IT company which developed event management system consisting of CMS, websites and mobile applications. I worked with team of developers and testers,  created test cases for all products and performed all stages of testing manually.", comment: ""), duration: NSLocalizedString("Jan 2017 - Sep 2017", comment: "")),
         Works(companyName: "Security Services Group", position: NSLocalizedString("QA Engineer", comment: ""), jobDescription: NSLocalizedString("Startup company which project is  secure messenger (mobile apps and web version). Being a single tester I have organized testing process  and performed all cycle of manual testing.", comment: ""), duration: NSLocalizedString("Dec 2015 - Jan 2017", comment: ""))
    ]
}
