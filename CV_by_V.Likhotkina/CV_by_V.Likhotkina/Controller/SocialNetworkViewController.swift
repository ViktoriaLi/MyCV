//
//  SocialNetworkViewController.swift
//  CV_by_V.Likhotkina
//
//  Created by Mac Developer on 4/30/19.
//  Copyright © 2019 Viktoria. All rights reserved.
//

import UIKit
import WebKit

class SocialNetworkViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    
    var activityIndicator: UIActivityIndicatorView!
    
    var webView: WKWebView!
    var networkToLoad: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let network = networkToLoad {
            let url = URL(string: network)
            let request = URLRequest(url: url!)
            webView.load(request)
            
            UIApplication.shared.isNetworkActivityIndicatorVisible = true
            
            activityIndicator = UIActivityIndicatorView()
            activityIndicator.center = self.view.center
            activityIndicator.hidesWhenStopped = true
            activityIndicator.style = UIActivityIndicatorView.Style.gray
            activityIndicator.color = UIColor.black
            webView.addSubview(activityIndicator)
            
            activityIndicator.startAnimating()
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
        //view.addSubview(webView)
        view = webView
    }
    
    /*func showActivityIndicator(show: Bool) {
        if show {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        showActivityIndicator(show: false)
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        showActivityIndicator(show: true)
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        showActivityIndicator(show: false)
    }*/
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.stopAnimating()
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
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

