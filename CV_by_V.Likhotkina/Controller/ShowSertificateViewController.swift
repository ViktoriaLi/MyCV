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
    @IBOutlet weak var certificateScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        certificateScrollView.delegate = self
        sertificateImageView.image = UIImage(named: "unit_progress")
        certificateScrollView.minimumZoomScale = 1.0
        certificateScrollView.maximumZoomScale = 10.0
    }
}

extension ShowSertificateViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return sertificateImageView
    }
}
