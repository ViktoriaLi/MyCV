//
//  SocialNetworkViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 4/30/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit
import WebKit

class SocialNetworkViewController: UIViewController, WKUIDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }}

    
   // func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        //title = webView.title
    //}

//}
