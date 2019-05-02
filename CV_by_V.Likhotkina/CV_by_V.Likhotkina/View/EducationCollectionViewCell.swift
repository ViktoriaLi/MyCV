//
//  EducationCollectionViewCell.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 5/1/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit

class EducationCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var institutionLabel: UILabel!
    @IBOutlet weak var educationDurationLabel: UILabel!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var educationStatus: UILabel!
    @IBOutlet weak var progressButton: UIButton!
    
    @IBAction func showProgress(_ sender: UIButton) {
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        //let controller = storyboard.instantiateViewController(withIdentifier: "showCertificate") as! ShowSertificateViewController
        /*let networkToLoad: String?
        switch sender.tag {
        case 0:
            networkToLoad = InfoAboutMe.shared.contacts.github
        case 1:
            networkToLoad = InfoAboutMe.shared.contacts.linkedin
        default:
            networkToLoad = nil
        }*/
        //controller.networkToLoad = networkToLoad
        //self.navigationController?.pushViewController(controller, animated: true)
    }
}
