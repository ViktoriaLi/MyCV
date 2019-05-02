//
//  AdditionalInfoViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 4/27/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit

class AdditionalInfoViewController: SwipeViewController {

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

extension AdditionalInfoViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return InfoAboutMe.shared.education.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = educationCollectionView.dequeueReusableCell(withReuseIdentifier: "educationCell", for: indexPath) as! EducationCollectionViewCell
        cell.institutionLabel.text = InfoAboutMe.shared.education[indexPath.row].institution
        cell.degreeLabel.text = InfoAboutMe.shared.education[indexPath.row].degree
        cell.educationDurationLabel.text = InfoAboutMe.shared.education[indexPath.row].duration
        cell.educationStatus.text = InfoAboutMe.shared.education[indexPath.row].status
        if cell.educationStatus.text != EducationStatus.inProgress.description {
            cell.progressButton.isHidden = true
        }
        return cell
    }
    
}

extension AdditionalInfoViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100.0)
    }
    
    /*func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20.0
    }*/
}

extension AdditionalInfoViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return InfoAboutMe.shared.languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = languageTableView.dequeueReusableCell(withIdentifier: "languageCell", for: indexPath) as! LanguagesTableViewCell
        cell.languageNameLabel.text = InfoAboutMe.shared.languages[indexPath.row].name
        cell.languageLevelLabel.text = InfoAboutMe.shared.languages[indexPath.row].level
        
        return cell
    }
    
    
}

