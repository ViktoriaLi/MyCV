//
//  ShowSertificateViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 5/1/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit

class ShowSertificateViewController: UIViewController {
    @IBOutlet weak var sertificateImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sertificateImageView.image = UIImage(named: "UnitProgress")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}