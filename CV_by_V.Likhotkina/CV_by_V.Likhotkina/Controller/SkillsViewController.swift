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
    @IBOutlet weak var skillsSearchBar: UISearchBar!
    
    var filteredSkills = [Skill]()

    override func viewDidLoad() {
        super.viewDidLoad()
        skillsTableView.delegate = self
        skillsTableView.dataSource = self
        skillsSearchBar.delegate = self
        filteredSkills = InfoAboutMe.shared.skills
    }
}

extension SkillsViewController: UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredSkills[section].currentStatus == .open ? 2 : 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return filteredSkills.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            if filteredSkills[indexPath.section].currentStatus == .open {
                filteredSkills[indexPath.section].currentStatus = .close
            } else if filteredSkills[indexPath.section].currentStatus == .close {
                filteredSkills[indexPath.section].currentStatus = .open
            }
            tableView.reloadSections([indexPath.section], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = skillsTableView.dequeueReusableCell(withIdentifier: "skillCell", for: indexPath) as? SkillsTableViewCell
        if indexPath.row == 0 {
            cell?.skillLabel.text = filteredSkills[indexPath.section].skillName
        } else {
            cell?.skillLabel.text = filteredSkills[indexPath.section].skillDescription
        }
        return cell!
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredSkills = searchText.isEmpty ? InfoAboutMe.shared.skills : InfoAboutMe.shared.skills.filter { (item: Skill) -> Bool in
            return item.skillName.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
        }
        skillsTableView.reloadData()
    }
}
