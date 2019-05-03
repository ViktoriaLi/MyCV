//
//  SocialNetworkViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 4/30/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit
import WebKit

class SocialNetworkViewController: UIViewController {
    
    var activityIndicator: UIActivityIndicatorView!
    
    var webView: WKWebView!
    var networkToLoad: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let network = networkToLoad {
            if let url = URL(string: network) {
                let request = URLRequest(url: url)
                webView.load(request)
                UIApplication.shared.isNetworkActivityIndicatorVisible = true
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.navigationDelegate = self
        webView.uiDelegate = self
        view = webView
    }
}

extension SocialNetworkViewController: WKNavigationDelegate, WKUIDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.stopAnimating()
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
}
