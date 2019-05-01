//
//  ExperienceViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 5/1/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController {
    
    @IBOutlet weak var jobTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jobTableView.delegate = self
        jobTableView.dataSource = self
        let nibTitle = UINib.init(nibName: "JobTitleTableViewCell", bundle: nil)
        jobTableView.register(nibTitle, forCellReuseIdentifier: "jobTitleCell")
        let nibDescription = UINib.init(nibName: "JobDescriptionTableViewCell", bundle: nil)
        jobTableView.register(nibDescription, forCellReuseIdentifier: "jobDescriptionCell")
    }
}

extension ExperienceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return InfoAboutMe.shared.works[section].currentStatus == .open ? 2 : 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return InfoAboutMe.shared.works.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            if InfoAboutMe.shared.works[indexPath.section].currentStatus == .open {
                InfoAboutMe.shared.works[indexPath.section].currentStatus = .close
            } else if InfoAboutMe.shared.works[indexPath.section].currentStatus == .close {
                InfoAboutMe.shared.works[indexPath.section].currentStatus = .open
            }
            tableView.reloadSections([indexPath.section], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "jobTitleCell", for: indexPath) as! JobTitleTableViewCell
            cell.companyNameLabel?.text = InfoAboutMe.shared.works[indexPath.section].companyName
            cell.positionLabel.text = InfoAboutMe.shared.works[indexPath.section].position
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "jobDescriptionCell", for: indexPath) as! JobDescriptionTableViewCell
            cell.jobDescriptionLabel.text = InfoAboutMe.shared.works[indexPath.section].jobDescription
            cell.durationLabel.text = InfoAboutMe.shared.works[indexPath.section].duration
            return cell
        }
    }
}
