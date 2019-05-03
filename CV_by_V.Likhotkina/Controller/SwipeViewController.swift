//
//  SwipeViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 5/2/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit

class SwipeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let left = UISwipeGestureRecognizer(target: self, action: #selector(swipeViewLeft))
        left.direction = .left
        self.view.addGestureRecognizer(left)
        
        let right = UISwipeGestureRecognizer(target: self, action: #selector(swipeViewRight))
        right.direction = .right
        self.view.addGestureRecognizer(right)
    }
    
    @objc func swipeViewLeft() {
        let total = self.tabBarController!.viewControllers!.count - 1
        tabBarController!.selectedIndex = min(total, tabBarController!.selectedIndex + 1)
        
    }
    
    @objc func swipeViewRight() {
        tabBarController!.selectedIndex = max(0, tabBarController!.selectedIndex - 1)
    }
}
