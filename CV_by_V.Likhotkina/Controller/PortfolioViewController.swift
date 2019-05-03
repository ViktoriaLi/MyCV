//
//  PortfolioViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Viktoriia LIKHOTKINA on 5/3/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit

class PortfolioViewController: UIViewController {

    @IBOutlet weak var projectImageView: UIImageView!
    
    let gifURL : String = "https://i.imgflip.com/2xr2v8.gif"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projectImageView.animationDuration = 3
        projectImageView.animationRepeatCount = 1
        if let url = URL(string: gifURL) {
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {

                    let image = UIImage(data: data)
                    self.projectImageView.image = image
                    self.view.addSubview(self.projectImageView)
                    
                    self.projectImageView.startAnimating()
                }
            }
        }
    }
    

}
