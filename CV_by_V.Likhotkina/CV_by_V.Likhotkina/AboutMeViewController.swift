//
//  AboutMeViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 4/27/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet weak var myPhotoImageView: UIImageView!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var summaryCollectionView: UICollectionView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneImageView: UIImageView!
    @IBOutlet weak var emailImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        summaryCollectionView.delegate = self
        summaryCollectionView.dataSource = self
        greetingLabel.text = InfoAboutMe.shared.greeting
        nameLabel.text = InfoAboutMe.shared.firstName + " " + InfoAboutMe.shared.lastName
        phoneNumberLabel.text = InfoAboutMe.shared.contacts.phone
        emailLabel.text = InfoAboutMe.shared.contacts.email
        
    }
    
    @IBAction func socialNetworkOpenButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "socialNetwork") as! SocialNetworkViewController
        let networkToLoad: String?
        switch sender.tag {
        case 0:
            networkToLoad = InfoAboutMe.shared.contacts.github
        case 1:
            networkToLoad = InfoAboutMe.shared.contacts.linkedin
        default:
            networkToLoad = nil
        }
        controller.networkToLoad = networkToLoad
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}

extension AboutMeViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return InfoAboutMe.shared.summary.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "summaryCell", for: indexPath) as! SummaryCollectionViewCell
        
        cell.summaryDescription.text = InfoAboutMe.shared.summary[indexPath.row]
        cell.layer.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        return cell
    }
}

extension AboutMeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 160.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20.0
    }
}
