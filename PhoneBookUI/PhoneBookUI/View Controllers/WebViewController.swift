//
//  WebViewController.swift
//  Assignment_1
//
//  Created by Malik Sheharyaar Talhat on 2019-09-19.
//  Copyright © 2019 Malik Sheharyaar Talhat. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate{
    

    @IBOutlet var webView : WKWebView!
    @IBOutlet var activity : UIActivityIndicatorView!
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activity.isHidden = false
        activity.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activity.isHidden = true
        activity.stopAnimating()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlAddress = URL(string : "https://github.com/maliksheharyaar?tab=repositories")
        let url = URLRequest(url: urlAddress!)
        webView.load(url)
        webView.navigationDelegate = self
        
       
    }
    
    
}
