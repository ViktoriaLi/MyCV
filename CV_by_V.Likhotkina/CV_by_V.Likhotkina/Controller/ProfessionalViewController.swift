//
//  ProfessionalViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 4/27/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    @IBOutlet weak var skillsTableView: UITableView!

}

extension SkillsViewController: UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        skillsTableView.delegate = self
        skillsTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return InfoAboutMe.shared.skills[section].currentStatus == .open ? 2 : 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return InfoAboutMe.shared.skills.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            if InfoAboutMe.shared.skills[indexPath.section].currentStatus == .open {
                InfoAboutMe.shared.skills[indexPath.section].currentStatus = .close
            } else if InfoAboutMe.shared.skills[indexPath.section].currentStatus == .close {
                InfoAboutMe.shared.skills[indexPath.section].currentStatus = .open
            }
            tableView.reloadSections([indexPath.section], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = skillsTableView.dequeueReusableCell(withIdentifier: "skillCell", for: indexPath) as? SkillsTableViewCell
        if indexPath.row == 0 {
            cell?.skillLabel.text = InfoAboutMe.shared.skills[indexPath.section].skillName
        } else {
            cell?.skillLabel.text = InfoAboutMe.shared.skills[indexPath.section].skillDescription
        }
        
        return cell!
    }

    
}
