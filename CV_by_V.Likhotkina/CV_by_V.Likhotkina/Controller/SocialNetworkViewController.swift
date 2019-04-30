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
    var networkToLoad: String?
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let network = networkToLoad {
            let url = URL(string: network)
            let request = URLRequest(url: url!)
            webView.load(request)
        }
    }
    
    /*func webViewDidFinishLoad(_ webView: UIWebView) {
        self.navigationController?.title
         = webView.stringByEvaluatingJavaScript(from: "document.title")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.navigationController?.title
            = webView.title
    }*/
    
}

