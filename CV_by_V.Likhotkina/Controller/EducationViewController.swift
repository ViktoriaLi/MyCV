//
//  AdditionalInfoViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 4/27/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit

class EducationViewController: SwipeViewController {

    @IBOutlet weak var educationCollectionView: UICollectionView!
    @IBOutlet weak var languageTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        educationCollectionView.delegate = self
        educationCollectionView.dataSource = self
        languageTableView.delegate = self
        languageTableView.dataSource = self
    }
}

extension EducationViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return InfoAboutMe.shared.education.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = educationCollectionView.dequeueReusableCell(withReuseIdentifier: "educationCell", for: indexPath) as? EducationCollectionViewCell
        cell?.institutionLabel.text = InfoAboutMe.shared.education[indexPath.row].institution
        cell?.degreeLabel.text = InfoAboutMe.shared.education[indexPath.row].degree
        cell?.educationDurationLabel.text = InfoAboutMe.shared.education[indexPath.row].duration
        if InfoAboutMe.shared.education[indexPath.row].status == EducationStatus.completed {
            cell?.progressButton.isHidden = true
        }
        return cell!
    }
}

extension EducationViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100.0)
    }
}

extension EducationViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return InfoAboutMe.shared.languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = languageTableView.dequeueReusableCell(withIdentifier: "languageCell", for: indexPath) as? LanguagesTableViewCell
        cell?.languageNameLabel.text = InfoAboutMe.shared.languages[indexPath.row].name
        cell?.languageLevelLabel.text = InfoAboutMe.shared.languages[indexPath.row].level
        
        return cell!
    }
 
}
